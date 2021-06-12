import'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final Function resetQuiz;

  String get resultPhrase{
    String resultText;
    if(totalScore ==0){
      resultText='Very low!';
    }
    else if(totalScore<=10){
      resultText='Low!';
    }
    else if(totalScore<=20){
      resultText='Moderate!';
    }
    else if(totalScore<=30){
      resultText='High!';
    }
    else{
      resultText='Very High!';
    }
    return resultText;

  }

  Result(this.totalScore,this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 350,
          child: Text('Risk Status: '+resultPhrase,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
        ),
        SizedBox(
          height: 15,
        ),
        // ignore: deprecated_member_use
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Assess again'),
          onPressed:resetQuiz,),
      ],
    ));
  }
}
