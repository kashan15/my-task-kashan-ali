import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_task_kashan/providers/logic_provider.dart';
import 'package:my_task_kashan/screens/chat_screen.dart';
import 'package:my_task_kashan/screens/home_screen.dart';
import 'package:provider/provider.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      lazy: false,
      create: (context) => LogicProvider(),
      child: GetMaterialApp(
          title: 'My Task',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen()
        //SplashScreen(),
      ),
    );
  }
}
