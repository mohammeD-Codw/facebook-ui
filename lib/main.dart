

import 'package:facebookui/ui/Taps/GroupTap.dart';
import 'package:facebookui/ui/Taps/MainTab.dart';
import 'package:facebookui/ui/Taps/MenuTap.dart';
import 'package:facebookui/ui/Taps/NotificationsTap.dart';
import 'package:facebookui/ui/Taps/WatchTap.dart';
import 'package:facebookui/ui/widgets/Bottom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  search(){
    print('Search Button');
  }
  massenger(){
    print('Massenger Button');
  }

  @override
  Widget build(BuildContext context) {

           return
               DefaultTabController(
                length: 5,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: const TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.home)),
                        Tab(icon: Icon(Icons.group)),
                        Tab(icon: Icon(Icons.ondemand_video)),
                        Tab(icon: Icon(Icons.notifications_outlined)),
                        Tab(icon: Icon(Icons.menu)),


                            ],
                    ),
                   actions: [
                      IconButton(onPressed: search, icon: Icon(Icons.search)),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 10),child: Image.asset('assets/images/messenger.png',width: 20,height: 20,color: Colors.white,))
                    ],
                    title: const Text('Facebook'),
                  ),
                  body:  TabBarView(
                    children: [
                      MainTab(),
                      GroupTap(),
                      WatchTap(),
                      NotificationsTap(),
                      MenuTap(),
                    ],
                  ),
                ),
              );

  }
}
