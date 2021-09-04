import 'package:tugas1flutter/Pages/NewPost.dart';
import 'package:tugas1flutter/Pages/Register.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List title = ['What is Dart?', 'What is Flutter?'];
  List subtitle = [
    'Dart is a client-optimized programming language for apps on multiple platforms. It is developed..',
    "Flutter is Google's UI toolkit for building beautiful, natively compiled applications for.."
  ];
  List<Color> colorsList = [
    Color(0xFF682D27),
    Color(0xFF319B4B),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          // leading: Icon(
          //   Icons.menu,
          //   color: Colors.black,
          // ),
          backgroundColor: Colors.orange,
          title: Text('Your Blogs',
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        drawer: Drawer(
            child: Container(
          color: Colors.orange,
          child: ListView(
            children: <Widget>[
              ListTile(
                tileColor: Colors.orange,
                leading: Icon(
                  Icons.account_box_rounded,
                ),
                title: Text('Account'),
                onTap: () {},
              ),
              ListTile(
                tileColor: Colors.orange,
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey[700],
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NewPost()));
            }),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: colorsList[index],
                  child: Text(title[index][0]),
                ),
                trailing: Text('Jan 26, 2021'),
                title: Text(
                  title[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(subtitle[index]),
              ),
            );
          },
          itemCount: title.length,
        ));
  }
}
