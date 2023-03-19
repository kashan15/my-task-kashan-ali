import 'package:flutter/material.dart';
import 'package:my_task_kashan/providers/base_provider.dart';
import 'package:my_task_kashan/res/images.dart';

class LogicProvider extends BaseProvider {
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = true;
  bool tap5 = false;

  List storyItems = [
    {'images': Images.storyPic1, 'name': 'George'},
    {'images': Images.storyPic2, 'name': 'Amily'},
    {'images': Images.storyPic1, 'name': 'Julia H'},
    {'images': Images.storyPic2, 'name': 'Blake'},
    {'images': Images.storyPic1, 'name': 'George'},
    {'images': Images.storyPic2, 'name': 'Amily'},
    {'images': Images.storyPic1, 'name': 'Julia H'},
    {'images': Images.storyPic2, 'name': 'Blake'},
  ];
  List chatItems = [
    {'images': Images.storyPic1, 'name': 'Darrell Steward', 'name1': 'Hello, Good morning', 'time': '11:47 PM', 'count': '4', 'color': Colors.blue,'color1': Colors.white,'color2': Colors.blue},
    {'images': Images.storyPic2, 'name': 'Jane Cooper', 'name1': 'You: Can you sent the photo?','time': '11:23 PM', 'count': '2', 'color': Colors.white,'color1': Colors.white,'color2': Colors.blue},
    {'images': Images.storyPic1, 'name': 'Theresa Webb', 'name1': 'OK: thank you','time': '11:17 PM', 'count': '4', 'color': Colors.blue,'color1': Colors.transparent,'color2': Colors.transparent},
    {'images': Images.storyPic2, 'name': 'Darrell Steward', 'name1': 'Hello, Good morning', 'time': '08:26 PM', 'count': '6', 'color': Colors.white,'color1': Colors.transparent,'color2': Colors.transparent},
    {'images': Images.storyPic1, 'name': 'Jane Cooper', 'name1': 'You: Can you sent the photo?','time': '08:13 PM', 'count': '3', 'color': Colors.white,'color1': Colors.white,'color2': Colors.blue},
    {'images': Images.storyPic2, 'name': 'Theresa Webb', 'name1': 'OK: thank you','time': 'yesterday', 'count': '0', 'color': Colors.white,'color1': Colors.transparent,'color2': Colors.transparent},
    {'images': Images.storyPic1, 'name': 'Theresa Webb', 'name1': 'OK: thank you','time': 'yesterday', 'count': '0', 'color': Colors.white,'color1': Colors.transparent,'color2': Colors.transparent},


  ];
}
