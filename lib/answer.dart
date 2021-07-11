import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final answerText;
  Answer(this.selectHandler, this.answerText);
  //const Answer({Key? key,  this.selectHandler, this.answerText}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
