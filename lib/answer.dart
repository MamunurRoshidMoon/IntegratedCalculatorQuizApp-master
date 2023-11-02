import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qiz_app/end.dart';

class answer extends StatefulWidget {
  const answer({super.key});

  @override
  State<answer> createState() => _answerState();
}

class _answerState extends State<answer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey4,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [

                  Center(child: Text("Answer",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold))),
                  Divider(thickness: 5,color: CupertinoColors.systemYellow),

                  Center(
                    child: Container(
                      child: Text("1. What programming language is Flutter primarily based on?\nAns: Dart\n\n2. What is the primary purpose of Flutter?\nAns: AI research\n\n3. Which widget is used to create a simple text label in Flutter?\nAns: Text\n\n4. What is the official integrated development environment (IDE) for Flutter?\nAns: Visual Studio Code\n\n5. Which of the following is not a key concept in Flutter?\nAns: Component\n\n6. What Flutter command is used to build a release APK for Android?\nAns: flutter build apk\n\n7. What package management system does Flutter use for managing dependencies?\nAns: Pub\n\n8. What is the purpose of the `setState` method in Flutter?\nAns: Updating the user interface\n\n9. What is the name of the layout widget in Flutter that arranges its children in a horizontal or vertical sequence?\nAns: Column\n\n10. What is the widget used to navigate between different screens in a Flutter app?\nAns: Navigator\n", style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                    ),
                  ),


                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(CupertinoColors.systemYellow)
                              ),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => end())
                                );
                              },
                              child: Text("Back",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))
                      )
                    ],
                  ),

                  SizedBox(height: 10)

                ],

              ),
            ),
          ),
        ),
      ),

    );
  }
}


