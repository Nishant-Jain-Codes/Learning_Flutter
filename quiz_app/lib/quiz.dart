import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';
const colors = [
  Color.fromARGB(255, 72, 33, 139),
  Color.fromARGB(255, 57, 25, 76)
];

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  
  void switchScreen(){
    setState((){
      activeScreen = 'questions-screen';
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
       setState((){
      activeScreen = 'result-screen';
    });
    }
  }
  void restartQuiz(){
    setState((){
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override 
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: activeScreen == 'start-screen'
          ? StartScreen(switchScreen)
          : activeScreen == 'questions-screen'
          ? QuestionsScreen(chooseAnswer)
          : ResultScreen(chosenAnswer: selectedAnswers,onRestart: restartQuiz),
        ),
      ),
    );
  }
}