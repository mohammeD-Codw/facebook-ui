import 'package:facebookui/models/StoryModel.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  StoryModel storyModel;


  Story(this.storyModel);

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 200,
            width: 100,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(storyModel.storyImageUrl),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            //decoration:BoxDecoration(borderRadius: BorderRadius.circular(100)),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  storyModel.imageProfileUrl,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              storyModel.userName,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
  }
}
