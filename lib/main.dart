import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp>{

  final _questions = const
  [
    {
      'questionText': 'Do you have large class sizes(>50 students)'
          ' where students are gathered in lecture halls/rooms?',
      'answers': [
        {'text': 'Yes', 'score': 5},
        {'text': 'No', 'score': 0},
     
      ],
    },
    {
      'questionText': 'Does the college or university provide on or off-campus'
          ' hosuing for students(including sorority/fraternity houses)'
          ' that require more than one student to occupy a room and use a'
          ' communal bathroom and other living spaces?',
      'answers': [
        {'text': 'Yes', 'score': 5},
        {'text': 'No', 'score': 0},
    
      ],
    },
    {
      'questionText': 'Does your college or university have dining rooms'
          ' that permit large numbers(>50) of students/faculties/staffs to gather together?',
      'answers': [
        {'text': 'Yes', 'score': 5},
        {'text': 'No', 'score': 0},
        //{'text': 'Max', 'score': 1},
        //{'text': 'Max', 'score': 1},
      ],
    },
    {
      'questionText': 'Does your college or university have a large number'
          ' of courses that must be attended in person?',
      'answers': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
       
      ],
    },
    {
      'questionText': 'Does your college or university have a large number of students'
          ' that would be unable to attend classes remotely?',
      'answers': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
    
      ],
    },
    {
      'questionText': 'Does your college or university have large'
          ' proportion of interntional students?',
      'answers': [
        {'text': 'Yes', 'score': 3},
        {'text': 'No', 'score': 0},
       
      ],
    },
    {
      'questionText': 'Do students and faculty rely on mass transit'
          ' (eg. bus or train) for their commute to and across campus(es)?',
      'answers': [
        {'text': 'Yes', 'score': 3},
        {'text': 'No', 'score': 0},
    
      ],
    },
    {
      'questionText': 'Does your college or university have team sports'
          ',athletic classes, or clubs where physical distancing'
          ' is difficult and increased droplet spread might occur?',
      'answers': [
        {'text': 'Yes', 'score': 3},
        {'text': 'No', 'score': 0},
  
      ],
    },
    {
      'questionText': 'Are staff or faculty required to share office space that does not'
          ' have >6ft distancing?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
       
      ],
    },
    {
      'questionText': 'Does your college or university have research'
          ' facilities(eg. laboratories) that make physical'
          ' distancing difficult?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
        
      ],
    },
    {
      'questionText': 'Is your college or university located in urban setting?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      
      ],
    },
    {
      'questionText': 'Does your college or university have many'
          ' staff/faculty with risk factors for COVID-19 severe diseases'
          ' (eg. >50 years old,underlying health conditions)?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
       
      ],
    },
    {
      'questionText': 'Does your college or university have significant'
          ' number of students that would be considered at high risk'
          ' (eg. underlying health conditions)?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
       
      ],
    },

  ];
  var _totalScore=0;
  var _questionIndex=0;

  void _resetQuiz( ){
    setState(() {
      _totalScore=0;
      _questionIndex=0;
    });
  }

  void _answerQuestion(int score){
    _totalScore+=score;
    setState(() {
      _questionIndex=_questionIndex+1;
    });
    if(_questionIndex < _questions.length){
      print('We have more questions');
    }

  }


  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(title: Text('Risk Assessment for Institutions')),
      body:_questionIndex < _questions.length? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,)
          : Result(_totalScore,_resetQuiz),
    )
    );
  }
}
