import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/services/clinicsData.dart';
import 'package:health_app/services/location.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final myController = TextEditingController();
  String inputValue="";

  List<String> specialization = [
    'General Hospitals',
    'Cardiology Clinics',
    'Dental Clinics',
    'Dermatology Clinics',
    'ENT Clinics',
    'Eye Hospitals',
    'Orthopaedic Clinics',
    'Pediatric Centres',
  ];

  Location instance1;

  void findClinics(index) async {

    instance1= Location(location:inputValue, specs: specialization[index]);
    ClinicData clinics=await instance1.searchHospitals();

    Navigator.pushNamed(context,'/results', arguments: {'specs': specialization[index],'clinics': clinics});

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    instance1= new Location(location:'Ernakulam', specs: specialization[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search for clinics/hospitals',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff0e2433),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                        'Location: ',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0e2433),
                        letterSpacing: 0.75,
                      ),
                    ),
                    SizedBox(width: 13),
                    Expanded(
                      child: TextField(
                        autofocus: true,
                        controller: myController,
                        decoration: InputDecoration(
                          hintText: 'Enter location',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        maxLines: 1,
                        minLines: 1,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff1c4966),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            inputValue=myController.text;
                          });
                        },
                        child: Text(
                            'OK',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:25),
              Text(
                  'Choose the category from the options below: ',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff0e2433),
                  fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: specialization.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, '/loading');
                          findClinics(index);
                        },
                        tileColor: Color(0xff1c4966),
                        title: Center(
                          child: Text(
                              specialization[index],
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );

  }
}
