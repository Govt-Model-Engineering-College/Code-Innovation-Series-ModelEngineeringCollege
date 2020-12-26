import 'dart:convert';

import 'package:edu_app/main.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Chapter {
  Chapter({this.courseId, this.grade, this.chapterName,this.desc,this.link,this.hasActivities,this.activityTitle,this.activityDesc});
  final int courseId;
  final int grade;
  final String chapterName;
  final String desc;
  final String link;
  final bool hasActivities;
  final String activityTitle;
  final String activityDesc;

}
List<Chapter> AllChapters = [
  new Chapter(courseId: 0,grade: 3,chapterName: 'Numbers & numeration part 1', link: YoutubePlayer.convertUrlToId('https://youtu.be/YTeTAzZB4qc'),),

  new Chapter(courseId: 0,grade: 3,chapterName: 'Numbers & numeration part 2', link: YoutubePlayer.convertUrlToId('https://youtu.be/zn0ZX8dwx3M')),
  new Chapter(courseId: 0,grade: 3,chapterName: 'Lesson 3', link: 'link'),

  new Chapter(courseId: 0,grade: 4,chapterName: 'Lesson 1', link: 'link'),
  new Chapter(courseId: 0,grade: 4,chapterName: 'Lesson 2', link: 'link'),
  new Chapter(courseId: 0,grade: 4,chapterName: 'Lesson 3', link: 'link'),

  new Chapter(courseId: 3,grade: 6,chapterName: '5. Separation of substances', desc:'This chapter introduces you to methods of separation such as hand-picking, winnowing, threshing, sieving, sedimentation, decantation, filtration and evaporation. This chapter will make you understand the process of separation by using real-life examples, such as separating husk and stones from grains, separation of solids from liquids etc.', link: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=hGkc2BqhPEo'),hasActivities : true, activityTitle:'Chromatography', activityDesc:'Chromatography is a process which will be learned in higher classes. This process can be slightly demonstrated using a white petaled flower. Dip it in ink and after a few hours you can see that the ink is absorbed into the petal,in layers.'),
];
class Course {
  final String courseName;
  final Image courseImage;
  const Course(this.courseName, this.courseImage);

}
List<Course> AllCourses = [
  new Course("Mathematics",Image.asset('assets/img/equation.png')),
  new Course("EVS",Image.asset('assets/img/earth.png')),
  new Course("English",Image.asset('assets/img/reception.png')),
  new Course("Science",Image.asset('assets/img/robot.png')),
  new Course("Social Science",Image.asset('assets/img/social.png')),
  new Course("Computer",Image.asset('assets/img/computer.png')),
];

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("RankGrab"),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children:<Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(0,20,0,20),
              child: Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage('assets/img/back.jpg'),fit: BoxFit.contain,alignment: Alignment.bottomCenter),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 5),
                  child:Text(
                    "COURSES",
                    style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.black,fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
          ),
          Container(
            width: double.infinity,
            height: 300,
            child: GridView.count(
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.horizontal,
              physics: PageScrollPhysics(),
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(6, (index) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child:Container(
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        boxShadow: [new BoxShadow(
                          color:  Colors.grey.withOpacity(0.5),
                          offset: Offset(0,8),
                          blurRadius: 5.0,
                          spreadRadius: 0,
                        ),]
                    ),
                    child: Center(
                      child:Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child:new GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GradeSelectionScreen(courseId: index,)),
                            );
                          },
                          child:Column(
                            children:[
                              Expanded(child:AllCourses[index].courseImage),
                              Container(

                                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                child: Text(
                                  AllCourses[index].courseName,
                                  style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ]
      ),


      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text('Username'),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color: Colors.grey))
              ),
              child:ListTile(
                title: Text('My progress'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color: Colors.grey))
              ),
              child:ListTile(
                title: Text('Courses'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color: Colors.grey))
              ),
              child:ListTile(
                title: Text('Settings'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color: Colors.grey))
              ),
              child:ListTile(
                title: Text('Log Out'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class GradeSelectionScreen extends StatelessWidget {
  final int courseId;
  GradeSelectionScreen({Key key, @required this.courseId}) : super(key: key);
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(AllCourses[courseId].courseName),
        ),
        body: ListView(
          children: List.generate(6, (index) {
            int grade = index+3;
            return new GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChapterSelectionScreen(courseId: courseId,grade: grade,)),
                );
              },
              child:Container(
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey[400]),
                    color: Colors.white,
                    boxShadow: [new BoxShadow(
                      color:  Colors.grey.withOpacity(0.3),
                      offset: Offset(0,2),
                      blurRadius: 3.0,
                      spreadRadius: 0,
                    ),]
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical:10,horizontal: 10),
                      child: Image.asset('assets/img/book.png',),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Grade $grade',textScaleFactor: 1.5,),
                    )
                  ],
                ),
              ),
            );
          }),
        )
    );
  }
}

class ChapterSelectionScreen extends StatelessWidget {
  final int courseId;
  final int grade;
  ChapterSelectionScreen({Key key, @required this.courseId,@required this.grade}) : super(key: key);
  @override
  Widget build (BuildContext context) {
    var chapterArray =AllChapters.where((element) => element.courseId == courseId && element.grade == grade).toList();
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(AllCourses[courseId].courseName+': Grade '+grade.toString()),
        ),
        body: Builder(
            builder: (context) {
              if (chapterArray.length>0) {
                return ListView(
                  children: List.generate(chapterArray.length, (index) {
                    return new GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MaterialScreen(courseId: courseId,grade: grade,chapterIndex: index,)),
                        );
                      },
                      child:Container(
                        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        width: double.infinity,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey[400]),
                            color: Colors.white,
                            boxShadow: [new BoxShadow(
                              color:  Colors.grey.withOpacity(0.3),
                              offset: Offset(0,2),
                              blurRadius: 3.0,
                              spreadRadius: 0,
                            ),]
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical:10,horizontal: 10),
                              child: Image.asset('assets/img/book.png',),
                            ),
                            Expanded(child:Text(chapterArray[index].chapterName,textScaleFactor: 1.5,)
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                );
              } else {
                return Center(child: Text("No Chapters available at the moment", textAlign: TextAlign.center,));
              }
            }
        )
    );
  }
}

class MaterialScreen extends StatelessWidget {
  final int courseId;
  final int grade;
  final int chapterIndex;
  // YoutubePlayerController _controller =

  MaterialScreen(
      {Key key, @required this.courseId, @required this.grade, @required this.chapterIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var chapterArray =AllChapters.where((element) => element.courseId == courseId && element.grade == grade).toList();
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: chapterArray[chapterIndex].link,
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          ),
        ),

        builder: (context, player) {
          return Column(
            children: [
              // some widgets
              player,

              GetVideoData(grade, courseId, chapterIndex,context),
              //some other widgets
            ],
          );
        }

    );
  }
}
Widget GetVideoData(int grade,int courseId, int chapterIndex, BuildContext context) {
  var chapterArray =AllChapters.where((element) => element.courseId == courseId && element.grade == grade).toList();
  if (chapterArray[chapterIndex].hasActivities == true)
  {
    return Expanded(

      child: Container(

        color: Colors.white,
        child: ListView(
          children: [

            Container(
              margin: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color:  Colors.grey.withOpacity(0.8),
                    offset: Offset(0,4),
                    blurRadius: 8.0,
                    spreadRadius: 0,
                  ),]
              ),
              child: Padding(
                  padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  child: Text(chapterArray[chapterIndex].chapterName.toUpperCase(),style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,)
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
              child: Column(
                  children:[

                    Text(chapterArray[chapterIndex].desc,
                      style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black,fontSize: 17),)
                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color:  Colors.grey.withOpacity(0.8),
                    offset: Offset(0,4),
                    blurRadius: 8.0,
                    spreadRadius: 0,
                  ),]
              ),
              child: Padding(
                  padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  child: Column(
                    children:[
                      Text("Extra Activities",
                        style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Text(chapterArray[chapterIndex].activityTitle,
                          style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                      ),
                      Text(chapterArray[chapterIndex].activityDesc,
                        style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black,fontSize: 17),)
                    ]
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  else
  {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color:  Colors.grey.withOpacity(0.8),
                    offset: Offset(0,4),
                    blurRadius: 8.0,
                    spreadRadius: 0,
                  ),]
              ),
              child: Padding(
                  padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  child: Text(chapterArray[chapterIndex].chapterName.toUpperCase(),style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,)
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color:  Colors.grey.withOpacity(0.8),
                    offset: Offset(0,4),
                    blurRadius: 8.0,
                    spreadRadius: 0,
                  ),]
              ),
              child: Padding(
                  padding:EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin at massa rutrum, porta tortor id, porttitor eros. Suspendisse vitae ullamcorper nisi, sit amet consequat massa. Aenean tincidunt posuere tincidunt. Phasellus sed purus ultrices, volutpat nulla et, hendrerit justo. Proin faucibus nisi tempus, suscipit urna elementum, tempus tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla imperdiet pretium enim vel dignissim. Nullam luctus mollis nisl, at convallis risus varius a. Proin nec purus felis. Praesent ullamcorper mi a tincidunt dignissim. Praesent sed elementum dui. Vestibulum tempus, felis eu tempor hendrerit, diam ipsum lobortis sem, a eleifend quam enim ac mauris. Duis sit amet posuere tortor, sit amet blandit nunc. Sed hendrerit suscipit nisi, sit amet faucibus nunc accumsan id.",
                    style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black,fontSize: 17),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

