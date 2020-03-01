import 'package:flutter/material.dart';
import 'package:flutter_test_ver2/screens/user/join/items/dropdown_age.dart';
import 'package:flutter_test_ver2/screens/user/join/items/dropdown_gender.dart';

class joinPage extends StatefulWidget {
  @override
  _joinPageState createState() => _joinPageState();
}

class _joinPageState extends State<joinPage> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("회원가입"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  " 회원 정보 입력하기 ", style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold
                ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "아이디"
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter some text';
                    } else if (value.length < 4) {
                      return "아이디를 4자 이상 입력해야 합니다.";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "비밀번호"
                    ),
                    controller: _pass,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter some text';
                      } else if (value.length < 4) {
                        return "비밀번호를 4자 이상 입력해야 합니다.";
                      }
                      else {
                        return null;
                      }
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "비밀번호 확인"
                    ),
                    controller: _confirmPass,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter some text';
                      } else if (value != _pass.text) {
                        return 'Not Match';
                      }
                      else {
                        return null;
                      }
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "이름"
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 200
                          , child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "생년월일",
                            hintText: "ex) 19901212"
                        ),
                      ))
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Text("성별", style: TextStyle(fontSize: 16,
                              color: Colors.black54),)),
                      Container(
                          margin: EdgeInsets.all(10),
                          child: dropdownGender()),
                    ],
                  )
                ],
              ),
              FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context)
                        .showSnackBar(
                        SnackBar(content: Text('Processing Data'),));
                  }
                },
                child: Text("submit"),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}

