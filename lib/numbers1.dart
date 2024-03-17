import 'package:flutter/material.dart';
import 'account.dart'; 
import 'alphabets1.dart'; 
import 'words1.dart';
import 'sentences1.dart'; 
import 'quizzes.dart';
import 'login_reg_page.dart'; 

void main() {
  runApp(Numbers1());
}

class Numbers1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech Craft',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 43, 36, 58),
        ),
      ),
      home: SpanishNumbersPage(),
    );
  }
}

class SpanishNumbersPage extends StatefulWidget {
  @override
  _SpanishNumbersPageState createState() => _SpanishNumbersPageState();
}

class _SpanishNumbersPageState extends State<SpanishNumbersPage> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  bool _showEnglishMeaning = false;

  List<Map<String, String>> spanishNumbers = [
    {"0 - cero": "0 - zero"},
{"1 - uno": "1 - one"},
{"2 - dos": "2 - two"},
{"3 - tres": "3 - three"},
{"4 - cuatro": "4 - four"},
{"5 - cinco": "5 - five"},
{"6 - seis": "6 - six"},
{"7 - siete": "7 - seven"},
{"8 - ocho": "8 - eight"},
{"9 - nueve": "9 - nine"},
{"10 - diez": "10 - ten"},
{"11 - once": "11 - eleven"},
{"12 - doce": "12 - twelve"},
{"13 - trece": "13 - thirteen"},
{"14 - catorce": "14 - fourteen"},
{"15 - quince": "15 - fifteen"},
{"16 - dieciséis": "16 - sixteen"},
{"17 - diecisiete": "17 - seventeen"},
{"18 - dieciocho": "18 - eighteen"},
{"19 - diecinueve": "19 - nineteen"},
{"20 - veinte": "20 - twenty"},
{"30 - treinta": "30 - thirty"},
{"40 - cuarenta": "40 - forty"},
{"50 - cincuenta": "50 - fifty"},
{"60 - sesenta": "60 - sixty"},
{"70 - setenta": "70 - seventy"},
{"80 - ochenta": "80 - eighty"},
{"90 - noventa": "90 - ninety"},
{"100 - cien": "100 - one hundred"},
{"200 - doscientos": "200 - two hundred"},
{"300 - trescientos": "300 - three hundred"},
{"400 - cuatrocientos": "400 - four hundred"},
{"500 - quinientos": "500 - five hundred"},
{"600 - seiscientos": "600 - six hundred"},
{"700 - setecientos": "700 - seven hundred"},
{"800 - ochocientos": "800 - eight hundred"},
{"900 - novecientos": "900 - nine hundred"},
{"1000 - mil": "1000 - one thousand"},
{"10000 - diez mil": "10000 - ten thousand"},
{"100000 - cien mil": "100000 - one hundred thousand"},
{"1000000 - un millón": "1000000 - one million"},
{"10000000 - diez millones": "10000000 - ten million"},
{"100000000 - cien millones": "100000000 - one hundred million"},
{"1000000000 - mil millones": "1000000000 - one billion"},
{"10000000000 - diez mil millones": "10000000000 - ten billion"},
{"100000000000 - cien mil millones": "100000000000 - one hundred billion"},
{"1000000000000 - un billón": "1000000000000 - one trillion"}

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
                        label: 'Spanish Number',
                      ),
                      _buildWord(
                        text: spanishNumbers[_currentIndex].values.first,
                        rotation: _backRotation,
                        label: 'English Number',
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
        Navigator.of(context).pop(); // Close the bottom sheet after tapping a menu item
        switch (text) {
          case "Account":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Account())); // Navigate to the account page
            break;
          case "Alphabets":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Alphabets1())); // Navigate to the alphabets page
            break;
          case "Numbers":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Numbers1())); // Navigate to the numbers page
            break;
          case "Words":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Words1())); // Navigate to the words page
            break;
          case "Sentences":
            Navigator.push(context, MaterialPageRoute(builder: (context) => Sentences1())); // Navigate to the sentences page
            break;
          case "Quizzes":
             Navigator.push(context, MaterialPageRoute(builder: (context) => Quizzes())); // Navigate to the sentences page
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
