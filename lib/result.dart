import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(
      {Key? key, required this.resultScore, required this.resetHandler})
      : super(key: key);
  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore < 4) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore < 10) {
      resultText = "Pretty likeable!";
    } else if (resultScore < 12) {
      resultText = 'You are .. strange?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () => resetHandler(), child: Text('Restart Quiz!')),
      ],
    );
  }
}
