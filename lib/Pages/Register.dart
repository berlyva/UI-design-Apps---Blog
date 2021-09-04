import 'PostPage.dart';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var a = TextFormField(
        decoration: InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.5)),
            labelText: "Full Name",
            labelStyle: TextStyle(color: Colors.white),
            prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start: 12.0),
              child: Icon(Icons.person, color: Colors.white),
            )));
    var b = TextFormField(
        decoration: InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.5)),
            labelText: "Valid Email",
            labelStyle: TextStyle(color: Colors.white),
            prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start: 12.0),
              child: Icon(Icons.alternate_email, color: Colors.white),
            )));
    var c = TextFormField(
        decoration: InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.5)),
            labelText: "Password",
            labelStyle: TextStyle(color: Colors.white),
            prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start: 12.0),
              child: Icon(Icons.lock, color: Colors.white),
            )));
    var d = TextFormField(
        decoration: InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.5)),
            labelText: "Confirm Password",
            labelStyle: TextStyle(color: Colors.white),
            prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start: 12.0),
              child: Icon(Icons.lock, color: Colors.white),
            )));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.orange,
          child: Column(
            children: <Widget>[
              MaterialButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostPage()));
              }),
              SizedBox(
                height: 60.0,
              ),
              Center(
                child: Text(
                  "Blogging",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      a,
                      SizedBox(
                        height: 15.0,
                      ),
                      b,
                      SizedBox(
                        height: 15.0,
                      ),
                      c,
                      SizedBox(
                        height: 15.0,
                      ),
                      d,
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        width: 300.0,
                        height: 50.0,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.blue[400],
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                          ),
                          Text(
                            "Already have an account ?",
                            style: TextStyle(color: Colors.white),
                          ),
                          // ignore: deprecated_member_use
                          FlatButton(
                            minWidth: 0,
                            height: 5,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PostPage()));
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Page Two"),
      ),
    );
  }
}
