import 'package:flutter/material.dart';


class DataSearch extends SearchDelegate<String> {
  final courses = [
    'C',
    'C++',
    'Python',
    'HTML',
    'CSS'
    'Java',
    'JavaScript',
    'Dart',
    'Flutter',
    'React js',
  ];
  final recent = ['HTML','CSS', 'JavaScript', 'Dart', 'React js'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = " ";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recent
        : courses.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) =>
          ListTile(
            leading: Icon(Icons.search),
            title: RichText(
              text: TextSpan(
                  text: suggestions[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestions[index].substring(query.length),
                        style: TextStyle(color: Colors.grey)
                    )
                  ]
              ),
            ),
          ),
      itemCount: suggestions.length,
    );
  }
}
