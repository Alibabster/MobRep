import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';


class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  bool _isLoading = false;


  get phone => null;

@override
Widget build(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff407294), Color(0xffFFFFFF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: _isLoading ? Center(child: CircularProgressIndicator()) : ListView(
        children: <Widget>[
          headerSection(),
          textSection(),
          buttonSection(),
        ],
      ),
    ),
  );
}

signIn(String phone, pass) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  Map data = {
    'phone': phone,
    'password': pass
  };
  var jsonResponse;
  var response = await http.post(Uri.parse("https://7food.kz/api/auth/login?phone=77077077777&password=12345678"), body: data);
  if(response.statusCode == 200) {
    jsonResponse = json.decode(response.body);
    if(jsonResponse != null) {
      setState(() {
        _isLoading = false;
      });
      sharedPreferences.setString("token", jsonResponse['token']);
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => MainPage()), (Route<dynamic> route) => false);
    }
  }
  else {
    setState(() {
      _isLoading = false;
    });
    print(response.body);
  }
}

Container buttonSection() {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 40.0,
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    margin: EdgeInsets.only(top: 15.0),
    child: RaisedButton(
      onPressed: phoneController.text == "" || passwordController.text == "" ? null : () {
        setState(() {
          _isLoading = true;
        });
        signIn(phoneController.text, passwordController.text);
      },
      elevation: 0.0,
      color: Color(0xff407294),
      child: Text("Sign In", style: TextStyle(color: Colors.white70)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
}

final TextEditingController phoneController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();

Container textSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: Column(
      children: <Widget>[
        TextFormField(
          controller: phoneController,
          cursorColor: Colors.white,

          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
            icon: Icon(Icons.contact_phone, color: Colors.white70),
            hintText: "Number",
            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
            hintStyle: TextStyle(color: Colors.white70),
          ),
        ),
        SizedBox(height: 30.0),
        TextFormField(
          controller: passwordController,
          cursorColor: Colors.white,
          obscureText: true,
          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
            icon: Icon(Icons.lock, color: Colors.white70),
            hintText: "Password",
            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
            hintStyle: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    ),
  );
}

Container headerSection() {
  return Container(
    margin: EdgeInsets.only(top: 50.0),
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
    child: Text("Sign in",
        style: TextStyle(
            color: Colors.white70,
            fontSize: 40.0,
            fontWeight: FontWeight.bold)),
  );
}
}