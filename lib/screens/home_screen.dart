import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_task_kashan/providers/logic_provider.dart';
import 'package:my_task_kashan/screens/chat_screen.dart';
import 'package:my_task_kashan/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<LogicProvider>(
        builder: (context, value, child) {
          return Scaffold(
            body: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.25,
                        width: double.infinity,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              const SizedBox(height: 25,),
                              Row(
                                children: [
                                  TextWidget(
                                    textTitle: "Chats",
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          IconButton(padding: EdgeInsets.zero,
                                              constraints: const BoxConstraints(),
                                              onPressed: () {},
                                              icon: const Icon(Icons.menu, size: 25,
                                                color: Colors.white,)),
                                          const SizedBox(width: 15,),
                                          IconButton(padding: EdgeInsets.zero,
                                              constraints: const BoxConstraints(),
                                              onPressed: () {},
                                              icon: const Icon(Icons.search, size: 25,
                                                color: Colors.white,)),
                                        ],
                                      ))
                                ],
                              ), const SizedBox(height: 25,),
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: value.storyItems.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .height * 0.05,
                                              backgroundColor: Colors.blueAccent,
                                              child: CircleAvatar(
                                                radius: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .height * 0.047,
                                                backgroundColor: Colors.black,
                                                child: CircleAvatar(
                                                    radius: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .height * 0.044,
                                                    backgroundColor: Colors.black,
                                                    backgroundImage: AssetImage(
                                                        value
                                                            .storyItems[index]['images'])
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 7,),
                                            TextWidget(
                                              textTitle: value
                                                  .storyItems[index]['name'],
                                              fontSize: 15,
                                              decoration: TextDecoration.none,
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ],
                                        ), const SizedBox(width: 15,)
                                      ],
                                    );
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Column(
                        children:[ ListView.builder( padding: EdgeInsets.zero,
                          shrinkWrap: true, scrollDirection: Axis.vertical,
                          itemCount: value.chatItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            return
                                GestureDetector(
                                  onTap: (){
                                    Get.to(() => const ChatScreen());
                                  },
                                  child: Container( padding: const EdgeInsets.symmetric(horizontal: 20),color: Colors.white,
                                    child: Column(
                                      children:[ Row(
                                        // mainAxisSize: MainAxisSize.min,
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Stack(
                                            children:[
                                              CircleAvatar(
                                                radius: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .height * 0.035,
                                                backgroundColor: Colors.black,
                                                backgroundImage: AssetImage(
                                                    value.chatItems[index]['images'])
                                            ),

                                              Positioned(
                                                top: 41, left: 40,
                                                child:
                                                CircleAvatar(
                                                  radius: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .height * 0.006,
                                                  backgroundColor: value.chatItems[index]['color1'],
                                                  child:  CircleAvatar(
                                                    radius: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .height * 0.005,
                                                    backgroundColor: value.chatItems[index]['color2'],
                                                  ),
                                                ),
                                              ),
                                          ]), const SizedBox(width: 15,),
                                          Expanded(
                                            child: Column(
                                                //mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[ Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  TextWidget(
                                                    textTitle: value.chatItems[index]['name'],
                                                    fontSize: 15,
                                                    decoration: TextDecoration.none,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  TextWidget(
                                                    textTitle: value.chatItems[index]['time'],
                                                    fontSize: 12,
                                                    decoration: TextDecoration.none,
                                                    color: Colors.blueAccent,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ],
                                              ), const SizedBox(height: 8,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    TextWidget(
                                                      textTitle: value.chatItems[index]['name1'],
                                                      fontSize: 15,
                                                      decoration: TextDecoration.none,
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                    CircleAvatar(
                                                      radius: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .height * 0.0125,
                                                      backgroundColor: value.chatItems[index]['color'],
                                                      child: Center(child: TextWidget(
                                                        textTitle: value.chatItems[index]['count'],
                                                        fontSize: 12,
                                                        decoration: TextDecoration.none,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                      ),)
                                                    ),
                                                  ],
                                                ),
                                            ]),
                                          ),

                                        ],
                                      ), const SizedBox(height: 20,)
                                    ]),
                                  ),
                                );





                          },
                        ),
                      ]),
                    ],
                  ),
                )
            ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: GestureDetector(
                onTap: (){},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal:20),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(35)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  [
                          IconButton(
                            padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                            onPressed: (){
                              setState(() {
                                value.tap1 = true;
                                value.tap2 = false;
                                value.tap3 = false;
                                value.tap4 = false;
                                value.tap5 = false;
                              });
                            },
                              icon: Icon(
                                  Icons.menu,
                                  color: value. tap1 == false ? Colors.white : Colors.blue,
                                  size: 25
                              )),
                          IconButton(padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                              onPressed: (){
                               setState(() {
                                 value.tap1 = false;
                                 value.tap2 = true;
                                 value.tap3 = false;
                                 value.tap4 = false;
                                 value.tap5 = false;
                               });
                              },
                              icon: Icon(Icons.play_arrow_outlined,
                                  color: value. tap2 == false ? Colors.white : Colors.blue, size: 25)),
                          IconButton(padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                              onPressed: (){
                                setState(() {
                                  value.tap1 = false;
                                  value.tap2 = false;
                                  value.tap3 = true;
                                  value.tap4 = false;
                                  value.tap5 = false;
                                });
                              },
                              icon: Icon(Icons.heart_broken_outlined,
                                  color: value. tap3 == false ? Colors.white : Colors.blue, size: 25)),
                          IconButton(padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                              onPressed: (){
                                setState(() {
                                  value.tap1 = false;
                                  value.tap2 = false;
                                  value.tap3 = false;
                                  value.tap4 = true;
                                  value.tap5 = false;
                                });
                              },
                              icon: Icon(Icons.message_rounded,
                                  color: value. tap4 == false ? Colors.white : Colors.blue, size: 25)),
                          IconButton(padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                              onPressed: (){
                                setState(() {
                                  value.tap1 = false;
                                  value.tap2 = false;
                                  value.tap3 = false;
                                  value.tap4 = false;
                                  value.tap5 = true;
                                });
                              },
                              icon: Icon(Icons.person_rounded,
                                  color: value. tap5 == false ? Colors.white : Colors.blue, size: 25)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
          );
        });
  }
}
