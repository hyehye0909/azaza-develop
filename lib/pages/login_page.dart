import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'menu_page.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DOGGARDEN'),
        backgroundColor: Colors.yellow[800],
        centerTitle: true,
        /*leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}
          )
        ],*/
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:50)),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/dog.JPG'),
                radius: 60.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Form(child:Theme(
                data: ThemeData(
                    primaryColor: Colors.yellowAccent,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0
                        )
                    )
                ),
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Email'
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Password'
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      SizedBox(height: 30.0,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 0.0
                        ),
                        child: Text('로그인'),
                      ),
                      SizedBox(height: 40.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.orangeAccent, backgroundColor: Colors.white,
                              minimumSize: Size(100,30),
                            ),
                            child: Text('비밀번호 찾기'),
                          ),
                          SizedBox(width: 16.0),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpPage()),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.orangeAccent, backgroundColor: Colors.white,
                              minimumSize: Size(100,30),
                            ),
                            child: Text('회원가입'),
                          ),
                        ],
                      ),


                      SizedBox(height: 30.0,),

                      // Text('Dont have an account?',
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontSize: 11.0,
                      //   ),
                      // ),
                    ],
                  ),
                ))
            )
          ],
        ),
      ),
    );
  }
}