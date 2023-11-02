import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'package:qiz_app/screen_design.dart';
import 'package:qiz_app/answer.dart';

class end extends StatefulWidget {
  const end({super.key});

  @override
  State<end> createState() => _endState();
}

class _endState extends State<end> {
  double percentage = count/10*100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey4,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [
                Text("Your Score",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
                Divider(thickness: 5,color: CupertinoColors.systemYellow),

                SizedBox(height: 100),


                Stack(
                  alignment: Alignment.center,
                  children: [

                    SizedBox(
                      height: 250,
                      width: 250,
                      child: CircularProgressIndicator(

                        strokeWidth: 15,
                        color: Colors.yellow,
                        backgroundColor: Colors.white,

                      ),
                    ),

                    Center(
                      child: Column(
                        children: [
                          Text("$count/10",style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold)),
                          Text("$percentage%",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                          Text("High Score: "+"$highscore",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                        ],
                      ),
                    )

                  ],
                ),

                SizedBox(height: 40),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(CupertinoColors.systemYellow)
                        ),
                        onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => answer())
                            );


                        }, child: Text("Quick Recap",style: TextStyle(fontSize: 30),))
                  ],
                ),


                Expanded(child: SizedBox()),
                
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(CupertinoColors.systemYellow)
                        ),
                          onPressed: (){
                            count = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => q1())
                            );
                          },
                          child: Text("Restart",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold))),
                    )
                  ],
                ),

                SizedBox(height: 10)



              ],


            ),
          ),
        ),
      ),

    );
  }
}
