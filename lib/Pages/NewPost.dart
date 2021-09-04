import 'package:flutter/material.dart';

import 'PostPage.dart';

class NewPost extends StatefulWidget {
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  var title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        title: Text(
          'Create a Post',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: TextFormField(
            onChanged: (value) => {title = value},
            decoration: InputDecoration(
              hintText: "What is Flutter?",
              hintStyle: TextStyle(color: Colors.black),
              labelStyle: TextStyle(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.3)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.3)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: TextFormField(
            onChanged: (value) => {subtitle = value},
            maxLines: 17,
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
              hintText:
                  "Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.",
              hintStyle: TextStyle(color: Colors.black),
              labelStyle: TextStyle(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.3)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.3)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          height: 55.0,
          minWidth: 300.0,
          color: Colors.orange,
          textColor: Colors.white,
          child: Text(
            "Publish",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PostPage()));
          },
        ),
      ])),
    );
  }
}
