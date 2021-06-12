import 'package:flutter/material.dart';

class Question extends StatelessWidget {
   final String questionText;
   Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(top: 15,right: 8,left: 8,bottom: 8),
            child: Text(questionText,style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ),
      ),
    );
  }
}
