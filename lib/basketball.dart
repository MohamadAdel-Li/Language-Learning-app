import 'package:flutter/material.dart';

class basketball extends StatefulWidget {

  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
  int TeamAPoints = 0 ;
  int TeamBPoints = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        title: Text(
            'Basketball Score Counter'
        ),
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'TEAM A',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                        '$TeamAPoints',
                      style: TextStyle(
                        fontSize: 80,
                      ),

                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        TeamAPoints++;
                      });
                    },
                        child: Text(
                            '+1 point',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                        minimumSize: Size(130, 40),
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        TeamAPoints = TeamAPoints+2;
                      });
                    },
                      child: Text('+2 points',
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                        minimumSize: Size(130, 40),

                      ),

                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        TeamAPoints = TeamAPoints+3;
                      });
                    },
                      child: Text('+3 points',
                        style: TextStyle(
                        fontSize: 17,
                      ),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                        minimumSize: Size(130, 40),

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 450,
                child: VerticalDivider(
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'TEAM B',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$TeamBPoints',
                      style: TextStyle(
                        fontSize: 80,
                      ),

                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        TeamBPoints++;
                      });
                    },
                      child: Text('+1 point',
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        minimumSize: Size(130, 40),
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        TeamBPoints = TeamBPoints+2;

                      });
                    },
                      child: Text('+2 points',
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        minimumSize: Size(130, 40),

                      ),

                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        TeamBPoints = TeamBPoints+3;

                      });
                    },
                      child: Text('+3 points',
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        minimumSize: Size(130, 40),

                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              TeamAPoints = 0 ;
              TeamBPoints = 0 ;
            });
          },
            child: Text(
              'Reset',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.black,
              minimumSize: Size(150, 50),
            ),
          ),
        ],
      )
    );
  }
}
