import 'package:flutter/material.dart';
import 'package:flutter_test_ver2/screens/main_page.dart';
import 'package:flutter_test_ver2/screens/user/join/join_page.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 300,
              height: 300,
              child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic"
                          ""
                          ".com/images?q=tbn%3AANd9GcT1sjrAiKrHenAuZVL2SI7MILSSUgebusMlMlDyHwWOT4ozLDcZ"),
                  height: 150),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: 300,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "ID",
                    labelStyle: TextStyle(color: Colors.blue),
                    hintText: "Input your ID"

                ),

              ),
            )
            ,

            Container(
              margin: EdgeInsets.all(5),
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: TextField(obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.blue)
                      ,hintText: "Input your Password"
                  )
              ),
            ),
            SizedBox(height: 20.0,)
            ,
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 140,
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => joinPage()
                      ));
                    },
                    child: Text("JOIN",
                      style: TextStyle(fontSize: 20.0),),

                  ),

                ), SizedBox(width: 15,), Container(
                  height: 50,
                  width: 140,
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => mainPage()));
                    },
                    child: Text("LOGIN",
                      style: TextStyle(fontSize: 20.0),),
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Container(
              height: 50,
              width: 295,
              margin: EdgeInsets.all(5.0),
              child: FlatButton(
                textColor: Colors.blue,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {},
                child: Text("아이디 / 비밀번호 찾기 ",
                  style: TextStyle(fontSize: 20.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

