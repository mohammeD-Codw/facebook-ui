import 'package:facebookui/models/PostModel.dart';
import 'package:facebookui/models/StoryModel.dart';
import 'package:facebookui/models/UserModel.dart';
import 'package:facebookui/ui/widgets/Post.dart';
import 'package:facebookui/ui/widgets/Story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTab extends StatefulWidget {
  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  List<PostModel> postList = [
    PostModel(
      'Ali',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      10,
      12,
      '8h',
      221,
    ),
    PostModel(
      'Ahmed',
      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      200,
      25,
      '8d',
      300,
    ),
    PostModel(
      'Mohammed',
      'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      5000,
      215,
      '1y',
      258,
    ),
    PostModel(
      'Sami',
      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      1,
      21,
      '1m',
      55,
    ),
    PostModel(
      'Saber',
      'https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      254,
      147,
      '2d',
      212,
    ),
  ];
  List<StoryModel> storyList = [
    StoryModel(
      'Ali',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
    StoryModel(
      'Ahmed',
      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/1933317/pexels-photo-1933317.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    StoryModel(
      'Mohammed',
      'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/3778040/pexels-photo-3778040.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
    StoryModel(
      'Sami',
      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/1890745/pexels-photo-1890745.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
    StoryModel(
      'Saber',
      'https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/10593820/pexels-photo-10593820.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    StoryModel(
      'Ali',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
    StoryModel(
      'Ali',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
              children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(UserModel(
                      'Mohammed Alghoul',
                      'https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    ).profialImageUrl),
                  ),
                ),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Whats on your mind?',
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              height: 30,
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        print('Live');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.switch_video_rounded,
                            color: Colors.redAccent,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Live'),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        print('Photo');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.photo_library_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Photo'),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        print('Room');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.purple,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Room'),
                        ],
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.black12,
            ),
            SingleChildScrollView(
              child: Row(
                children: storyList.map((e) {
                  return Story(e);
                }).toList(),
              ),
              scrollDirection: Axis.horizontal,
            ),
            Divider(
              thickness: 10,
              color: Colors.black12,
            ),
            SingleChildScrollView(
              child: Column(
                children: postList.map((e) {
                  return Post(e);
                }).toList(),
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.black12,
            ),
          ]),
        ),
      ),
    );
  }
}
