import 'package:flutter/material.dart';
import 'alphabets1.dart';
import 'account.dart';
import 'numbers1.dart';
import 'words1.dart';
import 'sentences1.dart'; 
import 'login_reg_page.dart';

void main() {
  runApp(Quizzes());
}

class Quizzes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech Craft',
      color: Colors.white,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 43, 36, 58),
        ),
      ),
      home: SpanishWordsPage(),
    );
  }
}

class SpanishWordsPage extends StatefulWidget {
  @override
  _SpanishWordsPageState createState() => _SpanishWordsPageState();
}

class _SpanishWordsPageState extends State<SpanishWordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 43, 36, 58),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              _showMenu(context);
            },
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 43, 36, 58),
        child: Column(
          children: [
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Color.fromARGB(255, 43, 36, 58),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildMenuItem(context, "Account"),
              _buildMenuItem(context, "Alphabets"),
              _buildMenuItem(context, "Numbers"),
              _buildMenuItem(context, "Words"),
              _buildMenuItem(context, "Sentences"),
              _buildMenuItem(context, "Quizzes"),
              SizedBox(height: 20),
              _buildMenuItem(context, "Log Out"),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMenuItem(BuildContext context, String text) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.of(context).pop();
        switch (text) {
          case "Account":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Account())); 
            break;
          case "Alphabets":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Alphabets1())); 
            break;
          case "Numbers":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Numbers1())); 
            break;
          case "Words":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Words1())); 
            break;
          case "Sentences":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Sentences1())); 
            break;
          case "Quizzes":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Quizzes())); 
            break;
          case "Log Out":
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginReg()));
            break;
          default:
            break;
        }
      },
    );
  }
}
