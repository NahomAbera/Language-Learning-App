import 'package:flutter/material.dart';
import 'alphabets1.dart';
import 'numbers1.dart';
import 'quizzes.dart';
import 'grammar.dart';
import 'phrases.dart';
import 'words.dart';
import 'login_reg_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
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
      home: LoginPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft',
          style: TextStyle(fontSize: 25, color: Colors.white),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Your Spanish learning app',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Tu aplicación para aprender español\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  GridItem(title: 'Alphabets', route: Alphabets1()),
                  GridItem(title: 'Numbers', route: Numbers1()),
                  GridItem(title: 'Words', route: Words()),
                  GridItem(title: 'Phrases', route: Phrases()),
                  GridItem(title: 'Grammar', route: Grammar()),
                  GridItem(title: 'Quizzes', route: Quizzes()),
                ],
              ),
            ),
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
              _buildMenuItem(context, "Home"),
              _buildMenuItem(context, "Alphabets"),
              _buildMenuItem(context, "Numbers"),
              _buildMenuItem(context, "Words"),
              _buildMenuItem(context, "Phrases"),
              _buildMenuItem(context, "Grammar"),
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
          case "Home":
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage())); 
            break;
          case "Alphabets":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Alphabets1())); 
            break;
          case "Numbers":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Numbers1())); 
            break;
          case "Words":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Words())); 
            break;
          case "Grammar":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Grammar())); 
            break;
          case "Phrases":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Phrases()));
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

class GridItem extends StatelessWidget {
  final String title;
  final Widget route;

  GridItem({required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/owl.png',
              width: 40,
              height: 40, 
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: Color.fromARGB(255, 43, 36, 58),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
