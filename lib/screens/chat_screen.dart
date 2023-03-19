import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_task_kashan/providers/logic_provider.dart';
import 'package:my_task_kashan/res/images.dart';
import 'package:my_task_kashan/widgets/dialog_button.dart';
import 'package:my_task_kashan/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<LogicProvider>(
        builder: (context, value, child) {
          return Scaffold(
             appBar: PreferredSize(
                 preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
                 child: Container(
                   padding:  const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius:2,
                        spreadRadius: 2// Shadow position
                      ),
                    ],
                  ),
                   child: Row(
                     children:[ IconButton(padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                         onPressed: (){ Get.back();
                         },
                         icon: const Icon(Icons.arrow_back_ios,
                             color: Colors.black, size: 25)),
                       const SizedBox(width: 70,),
                       Expanded(child:
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const SizedBox(height: 20,),
                           CircleAvatar(
                               radius: MediaQuery
                                   .of(context)
                                   .size
                                   .height * 0.035,
                               backgroundColor: Colors.black,
                               backgroundImage: const AssetImage(
                                   Images.storyPic1)
                           ), const SizedBox(height: 10,),
                           TextWidget(
                             textTitle: "Samantha Scott",
                             fontSize: 15,
                             decoration: TextDecoration.none,
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                           ), const SizedBox(height: 5,),
                           TextWidget(
                             textTitle: "last seen just now",
                             fontSize: 10,
                             decoration: TextDecoration.none,
                             color: Colors.blue,
                             fontWeight: FontWeight.bold,
                           ),
                         ],
                       )
                       ),
                       Expanded(child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           CircleAvatar(
                               radius: MediaQuery
                                   .of(context)
                                   .size
                                   .height * 0.030,
                               backgroundColor: Colors.black,
                               child: const Center(child: Icon(Icons.phone, color: Colors.white, size: 25,),),
                           ),
                       ],)
                       ),

                   ]),
                 )),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius:2,
                                spreadRadius: 2// Shadow position
                            ),
                          ],
                        ),
                        child:  TextWidget(
                          textTitle: "Hey,how's it going today?",
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      TextWidget(
                        textTitle: "18:23",
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 25,),
                      CircleAvatar(
                          radius: MediaQuery
                              .of(context)
                              .size
                              .height * 0.020,
                          backgroundColor: Colors.black,
                          backgroundImage: const AssetImage(
                              Images.storyPic1)
                      ),
                      const SizedBox(width: 10,),
                      Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius:2,
                              spreadRadius: 2// Shadow position
                          ),
                        ],
                      ),
                      child:  TextWidget(
                        textTitle: "Have you seen any good\nmovies or TV shows\nlately?",
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                        ),
                      const SizedBox(width: 5,),
                      TextWidget(
                        textTitle: "18:23",
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        textTitle: "18:23",
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius:2,
                                spreadRadius: 2// Shadow position
                            ),
                          ],
                        ),
                        child:  TextWidget(
                          textTitle: "Yeah,I just watched this\nreally great series in Netflix.\nHave you seen anything\ngood?",
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),


                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius:2,
                                spreadRadius: 2// Shadow position
                            ),
                          ],
                        ),
                        child:  TextWidget(
                          textTitle: "What's something      \ninteresting that      \nhappened to you this     \nweek?",
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      TextWidget(
                        textTitle: "18:23",
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        textTitle: "18:23",
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius:2,
                                spreadRadius: 2// Shadow position
                            ),
                          ],
                        ),
                        child:  TextWidget(
                          textTitle: "I went to this really cool art \nexhibit. How about you?",
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),


                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [ const SizedBox(width: 60,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius:2,
                                spreadRadius: 2// Shadow position
                            ),
                          ],
                        ),
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[ CircleAvatar(
                              radius: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.005,
                              backgroundColor: Colors.grey,

                          ), const SizedBox(width: 7,),CircleAvatar(
                            radius: MediaQuery
                                .of(context)
                                .size
                                .height * 0.005,
                            backgroundColor: Colors.grey,

                          ),
                            const SizedBox(width: 7,),CircleAvatar(
                              radius: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.005,
                              backgroundColor: Colors.grey,

                            ),                       ] )
                      ),

                    ],
                  ),
                  const SizedBox(height: 30,),
                  Container( margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius:2,
                            spreadRadius: 2// Shadow position
                        ),
                      ],
                    ),
                    child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                            onPressed: (){

                            },
                            icon: const Icon(
                                Icons.attach_file_outlined,
                                color: Colors.grey,
                                size: 25
                            )), const SizedBox(width: 0,),
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: 'Enter your message..',
                            hintStyle: const TextStyle(color: Colors.grey),
                          ),
                        ),),
                        CircleAvatar(
                            radius: MediaQuery
                                .of(context)
                                .size
                                .height * 0.030,
                            backgroundColor: Colors.black,
                            child:  Center(child:
                            IconButton( padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                              onPressed: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return DialogButton();
                                  },
                                );
                              },
                              icon: const Icon(Icons.send, size: 25, color: Colors.white,),
                            ),),
                        ),
                      ],
                    )
                  ), const SizedBox(height: 30,),
                ],
              ),
            ),
          );
        });
  }
}
