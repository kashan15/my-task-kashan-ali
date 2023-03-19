import 'package:flutter/material.dart';
import 'package:my_task_kashan/res/images.dart';
import 'package:my_task_kashan/widgets/text_widget.dart';


class DialogButton extends StatelessWidget {

  // final String? buttonText;
  final VoidCallback? buttonPress;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Color? buttonBackground;

  const DialogButton(
      {Key? key,
        // @required this.buttonText,
        this.buttonPress,
        this.width,
        this.height,
        this.margin,
        this.buttonBackground,
      }
      )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: buttonBackground,
        //color:  isBusy? Colors.grey : null
      ),
      child: AlertDialog(
        icon: Image.asset(Images.check, height: 80,),
        content: TextWidget(
          textTitle: "Message has been sent successfully",
          fontSize: 14,
          decoration: TextDecoration.none,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}
