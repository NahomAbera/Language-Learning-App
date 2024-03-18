import 'package:flutter/material.dart';
import 'numbers1.dart';
import 'words.dart';
import 'phrases.dart';
import 'main.dart';
import 'quizzes.dart';
import 'grammar.dart';
import 'login_reg_page.dart'; 

void main() {
  runApp(Alphabets1());
}

class Alphabets1 extends StatelessWidget {
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
      home: SpanishAlphabetsPage(),
    );
  }
}

class SpanishAlphabetsPage extends StatefulWidget {
  @override
  _SpanishAlphabetsPageState createState() => _SpanishAlphabetsPageState();
}

class _SpanishAlphabetsPageState extends State<SpanishAlphabetsPage> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  bool _showEnglishMeaning = false;

  List<Map<String, String>> spanishNumbers = [
    { "A": "AH" },
    { "B": "BEH" },
    { "C": "SEH" },
    { "D": "DEH" },
    { "E": "EH" },
    { "F": "EH-FEH" },
    { "G": "HEH" },
    { "H": "AH-CHEH" },
    { "I": "EE" },
    { "J": "HOH-TAH" },
    { "K": "KAH" },
    { "L": "EH-LEH" },
    { "M": "EH-MEH" },
    { "N": "EH-NEH" },
    { "Ñ": "EH-NYE" },
    { "O": "OH" },
    { "P": "PEH" },
    { "Q": "KOO" },
    { "R": "EH-REH" },
    { "S": "EH-SEH" },
    { "T": "TEH" },
    { "U": "OO" },
    { "V": "BEH" },
    { "W": "DOH-BLEH-OO" },
    { "X": "EH-KEES" },
    { "Y": "EE-GRIEH-GAH" },
    { "Z": "SEH-TAH" },
    ];

  late AnimationController _controller;
  late Animation<double> _frontRotation;
  late Animation<double> _backRotation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _frontRotation = Tween<double>(
      begin: 0,
      end: -0.5 * 3.141592653589793,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );
    _backRotation = Tween<double>(
      begin: 1.5 * 3.141592653589793,
      end: 2 * 3.141592653589793,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Alphabets',
          style: TextStyle(fontSize: 22, color: Colors.white), 
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
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _showEnglishMeaning = !_showEnglishMeaning;
                    _controller.isDismissed ? _controller.forward() : _controller.reverse();
                  });
                },
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      _buildWord(
                        text: spanishNumbers[_currentIndex].keys.first,
                        rotation: _frontRotation,
                        label: 'Spanish Alphabet',
                      ),
                      _buildWord(
                        text: spanishNumbers[_currentIndex].values.first,
                        rotation: _backRotation,
                        label: 'Pronunciation',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildCustomProgressBar(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_currentIndex < spanishNumbers.length - 1) {
                  setState(() {
                    _currentIndex++;
                    _showEnglishMeaning = false;
                  });
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AlphabetQuiz()));
                }
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWord({required String text, required Animation<double> rotation, required String label}) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(rotation.value),
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCustomProgressBar() {
    return Center(
      child: CustomProgressBar(
        percentage: (_currentIndex + 1) / spanishNumbers.length,
        height: 20.0,
        width: 200.0,
        backgroundColor: Color.fromARGB(255, 236, 241, 236),
        progressColor: Color.fromARGB(255, 26, 176, 36),
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

class CustomProgressBar extends StatelessWidget {
  final double percentage;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color progressColor;

  const CustomProgressBar({
    Key? key,
    required this.percentage,
    required this.height,
    required this.width,
    required this.backgroundColor,
    required this.progressColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          width: width * percentage,
          height: height,
          decoration: BoxDecoration(
            color: progressColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }
}

