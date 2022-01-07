import 'dart:ui';

import 'package:facebookui/models/PostModel.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  PostModel postModel;

  Post(this.postModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
       // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(postModel.imageProfileUrl)),
            SizedBox(width: 10,),
            Column(children: [
              Text(postModel.userName,textAlign: TextAlign.left,),
              SizedBox(height: 5,),
              Row(children: [
                Text(postModel.time + ' . '),
                Icon(
                  Icons.public,
                  size: 15,
                ),
              ]),
            ]),
            Spacer(),
            IconButton(
                onPressed: () {
                  print('More Option!');
                },
                icon: Icon(Icons.more_horiz)),
            SizedBox(
              width: 5,
            ),
            IconButton(
                onPressed: () {
                  Text('Close Button');
                },
                icon: Icon(Icons.close)),
            ]),

          Container(
            child: Image.network(postModel.imagePostUrl),
            padding: EdgeInsets.symmetric(vertical: 8),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.thumb_up),
                Text('${postModel.noOfLike}'),
                Spacer(),
                Text(
                    '${postModel.noOfComment} Comments . ${postModel.noOfShares} shares'),
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.black12,
          ),
          Container(
            height: 30,
           // padding: EdgeInsets.all(5),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      print('Like');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.thumb_up,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Like',),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      print('Comment');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.mode_comment_outlined,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Comment'),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      print('Share');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.share,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Share'),
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
        ],
      ),
    );
  }
}
