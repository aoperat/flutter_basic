import 'package:flutter/material.dart';
import 'package:flutter_test_ver2/screens/user/login_page.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 30,),
          Image(image: NetworkImage(
              "https://img4.yna.co.kr/mpic/YH/2019/11/14/MYH20191114017900038_P4.jpg"),)
          , Container(

              child: FlatButton(
                child: Text("돌아가기"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => loginPage()
                  ));
                },
              ))
        ],
      ),
    );
  }
}
