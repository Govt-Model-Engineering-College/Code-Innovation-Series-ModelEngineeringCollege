import 'package:flutter/material.dart';
import 'package:node_app/providers/providers.dart';
import './pages/pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => DiaryProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => MeditationProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => PsikologProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => PaketProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => PodcastProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),
        routes: {
          SignUpPage.routeName: (ctx) => SignUpPage(),
          SignUpPhotoPage.routeName: (ctx) => SignUpPhotoPage(),
          SignUpSucces.routeName: (ctx) => SignUpSucces(),
          SignInPage.routeName: (ctx) => SignInPage(),
          MainPage.routeName: (ctx) => MainPage(),
          NewDiaryPage.routeName: (ctx) => NewDiaryPage(),
          PodcastPage.routeName: (ctx) => PodcastPage(),
          CommunityPage.routeName: (ctx) => CommunityPage(),
          ChatPage.routeName: (ctx) => ChatPage(),
          MeditationPage.routeName: (ctx) => MeditationPage(),
          PsikologPage.routeName: (ctx) => PsikologPage(),
          MeditationListPage.routeName: (ctx) => MeditationListPage(),
          PodcastPlayerPage.routeName: (ctx) => PodcastPlayerPage(),
          FormKonselingPage.routeName: (ctx) => FormKonselingPage(),
          TransactionPage.routeName: (ctx) => TransactionPage(),
          SuccessTransactionPage.routeName: (ctx) => SuccessTransactionPage(),
          MoodTrackerPage.routeName: (ctx) => MoodTrackerPage(),
        },
      ),
    );
  }
}
