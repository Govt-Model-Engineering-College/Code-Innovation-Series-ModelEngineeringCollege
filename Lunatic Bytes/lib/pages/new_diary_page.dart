part of 'pages.dart';

class NewDiaryPage extends StatefulWidget {
  static const routeName = '/new-diary';

  @override
  _NewDiaryPageState createState() => _NewDiaryPageState();
}

class _NewDiaryPageState extends State<NewDiaryPage> {
  final _descriptionFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  var _newDiary = Diary(
    id: null,
    title: "",
    description: "",
    dateTime: DateTime.now(),
  );

  var _initValues = {
    'title': '',
    'description': '',
  };
  var _isLoading = false;
  var _currentTime = DateTime.now();

  void _saveDiary() {
    final isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
    _form.currentState.save();
    setState(() {
      _isLoading = true;
    });
    Provider.of<DiaryProvider>(
      context,
      listen: false,
    ).addDiary(_newDiary);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Diary"),
        backgroundColor: accentColor1,
      ),
      backgroundColor: Colors.white,
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                  vertical: 20,
                ),
                child: Form(
                  key: _form,
                  child: ListView(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "${DateFormat.yMMMd().format(_currentTime)}",
                            style: blueTextFont.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${DateFormat.Hm().format(_currentTime)}",
                            style: blueTextFont.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        initialValue: _initValues['title'],
                        decoration: InputDecoration(
                          labelText: "Title",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context)
                              .requestFocus(_descriptionFocusNode);
                        },
                        onSaved: (value) {
                          _newDiary = Diary(
                            id: _newDiary.id,
                            title: value,
                            description: _newDiary.description,
                            dateTime: _newDiary.dateTime,
                          );
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please fill in your dairy title";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        initialValue: _initValues['description'],
                        decoration: InputDecoration(
                          labelText: "Description",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        textInputAction: TextInputAction.newline,
                        onFieldSubmitted: (_) {},
                        keyboardType: TextInputType.multiline,
                        onSaved: (value) {
                          _newDiary = Diary(
                            id: _newDiary.id,
                            title: _newDiary.title,
                            description: value,
                            dateTime: _newDiary.dateTime,
                          );
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please write your dairy descrption";
                          }
                          return null;
                        },
                        maxLines: 20,
                        maxLength: 1000,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: _saveDiary,
                          child: Text(
                            "Dairy added",
                            style: whiteTextFont.copyWith(fontSize: 16),
                          ),
                          color: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
