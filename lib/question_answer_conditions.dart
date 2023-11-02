import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class QuestionModel {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const QuestionModel({
    required this.correctAnswerIndex,
    required this.options,
    required this.question

  });
}

List<QuestionModel> questions = [
  QuestionModel(
    question: "What programming language is Flutter primarily based on?",
    options: ["Dart", "Java", "Python", "Swift"],
    correctAnswerIndex: 0, // Dart
  ),
  QuestionModel(
    question: "What is the primary purpose of Flutter?",
    options: ["Game development", "AI research", "Mobile app development"],
    correctAnswerIndex: 1, // Mobile app development
  ),
  QuestionModel(
    question: "Which widget is used to create a simple text label in Flutter?",
    options: ["Container", "Image", "Text", "ListView"],
    correctAnswerIndex: 2, // Text
  ),
  QuestionModel(
    question: "What is the official integrated development environment (IDE) for Flutter?",
    options: ["Eclipse", "Android Studio", "Xcode", "Visual Studio Code"],
    correctAnswerIndex: 3, // Visual Studio Code
  ),
  QuestionModel(
    question: "Which of the following is not a key concept in Flutter?",
    options: ["Component", "Widget", "State", "Layout"],
    correctAnswerIndex: 0, // Component
  ),
  QuestionModel(
    question: "What Flutter command is used to build a release APK for Android?",
    options: ["flutter apk", "flutter build apk", "flutter run --release", "flutter install apk"],
    correctAnswerIndex: 1, // flutter build apk
  ),
  QuestionModel(
    question: "What package management system does Flutter use for managing dependencies?",
    options: ["NPM", "CocoaPods", "Pub", "Gradle"],
    correctAnswerIndex: 2, // Pub
  ),
  QuestionModel(
    question: "What is the purpose of the `setState` method in Flutter?",
    options: ["Changing the screen orientation", "Creating new widgets", "Handling HTTP requests", "Updating the user interface"],
    correctAnswerIndex: 3, // Updating the user interface
  ),
  QuestionModel(
    question: "What is the name of the layout widget in Flutter that arranges its children in a horizontal or vertical sequence?",
    options: ["Column", "Grid", "Stack", "Row"],
    correctAnswerIndex: 0, // Column
  ),
  QuestionModel(
    question: "What is the widget used to navigate between different screens in a Flutter app?",
    options: ["TabBar", "Navigator", "AppBar", "Drawer"],
    correctAnswerIndex: 1, // Navigator
  ),
];




class button extends StatelessWidget {
  const button({
    required this.onpressed,
    required this.label
  });

  final VoidCallback? onpressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(CupertinoColors.systemYellow),
              ),
              onPressed: onpressed,
              child: Text(label, style: TextStyle(fontSize: 30),
              )),
        ),
      ],
    );
  }
}






Widget buildCorrectIcon() => const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.green,
  child: Icon(
    Icons.check,
    color: Colors.white,
  ),
);
Widget buildWrongIcon() => const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.red,
  child: Icon(
    Icons.close,
    color: Colors.white,
  ),
);


class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.question,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;


  @override
  Widget build(BuildContext context) {

    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
      child:
      selectedAnswerIndex != null
      ? Container(
        height: 60,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              width: 2,
              color: isCorrectAnswer
                   ? Colors.green
                   : isWrongAnswer
                   ? Colors.red
                   : Colors.white
          ),
        ),

        child: Row(
          children: [
            Expanded(child: Text(question,style: TextStyle(fontSize: 20,color: Colors.black))),
            SizedBox(width: 10),
            isCorrectAnswer
                ? buildCorrectIcon()
                : isWrongAnswer
                ?buildWrongIcon()
                :const SizedBox.shrink()
          ],
        ),

      )
      : Container(
              height: 55,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
              width: 2,
              color: Colors.white
      ),
      ),



      child: Row(
      children: [
        Expanded(child: Text(question,style: TextStyle(fontSize: 20,color: Colors.black))),
        SizedBox(width: 10),
      ],
      ),

      ),
      );
  }
}
