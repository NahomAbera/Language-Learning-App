import 'package:flutter/material.dart';
import 'main.dart';
import 'alphabets1.dart'; 
import 'numbers1.dart';  
import 'phrases.dart';
import 'grammar.dart'; 
import 'quizzes.dart';
import 'login_reg_page.dart';

void main() {
  runApp(Words());
}

class Words extends StatelessWidget {
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
      home: SpanishWordsPage(),
    );
  }
}

class SpanishWordsPage extends StatefulWidget {
  @override
  _SpanishWordsPageState createState() => _SpanishWordsPageState();
}

class _SpanishWordsPageState extends State<SpanishWordsPage> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  bool _showEnglishMeaning = false;

  List<Map<String, String>> spanishWords = [
    {'hola': 'hello'},
    {'adiós': 'goodbye'},
    {'gracias': 'thank you'},
    {'por favor': 'please'},
    {'sí': 'yes'},
    {'no': 'no'},
    {'bueno': 'good'},
    {'malo': 'bad'},
    {'grande': 'big'},
    {'pequeño': 'small'},
    {'amor': 'love'},
    {'amigo': 'friend'},
    {'familia': 'family'},
    {'casa': 'house'},
    {'calle': 'street'},
    {'comida': 'food'},
    {'agua': 'water'},
    {'vino': 'wine'},
    {'cerveza': 'beer'},
    {'playa': 'beach'},
    {'sol': 'sun'},
    {'luna': 'moon'},
    {'estrella': 'star'},
    {'jardín': 'garden'},
    {'árbol': 'tree'},
    {'flor': 'flower'},
    {'color': 'color'},
    {'rojo': 'red'},
    {'verde': 'green'},
    {'azul': 'blue'},
    {'blanco': 'white'},
    {'negro': 'black'},
    {'amarillo': 'yellow'},
    {'naranja': 'orange'},
    {'rosa': 'pink'},
    {'maíz': 'corn'},
    {'pan': 'bread'},
    {'queso': 'cheese'},
    {'carne': 'meat'},
    {'pescado': 'fish'},
    {'fruta': 'fruit'},
    {'manzana': 'apple'},
    {'plátano': 'banana'},
    {'naranja (fruta)': 'orange'},
    {'limón': 'lemon'},
    {'fresa': 'strawberry'},
    {'pera': 'pear'},
    {'uva': 'grape'},
    {'piña': 'pineapple'},
    {'melón': 'melon'},
    {'huevo': 'egg'},
    {'leche': 'milk'},
    {'café': 'coffee'},
    {'té': 'tea'},
    {'azúcar': 'sugar'},
    {'sal': 'salt'},
    {'pimienta': 'pepper'},
    {'aceite': 'oil'},
    {'vinagre': 'vinegar'},
    {'arroz': 'rice'},
    {'frijol': 'bean'},
    {'pasta': 'pasta'},
    {'pizza': 'pizza'},
    {'ensalada': 'salad'},
    {'sopa': 'soup'},
    {'carne de res': 'beef'},
    {'pollo': 'chicken'},
    {'cerdo': 'pork'},
    {'cordero': 'lamb'},
    {'marisco': 'seafood'},
    {'cangrejo': 'crab'},
    {'camarón': 'shrimp'},
    {'langosta': 'lobster'},
    {'ostra': 'oyster'},
    {'mejillón': 'mussel'},
    {'calamar': 'squid'},
    {'pulpo': 'octopus'},
    {'caracol': 'snail'},
    {'ensalada': 'salad'},
    {'aderezo': 'dressing'},
    {'tomate': 'tomato'},
    {'pepino': 'cucumber'},
    {'lechuga': 'lettuce'},
    {'cebolla': 'onion'},
    {'zanahoria': 'carrot'},
    {'papa': 'potato'},
    {'ajo': 'garlic'},
    {'berenjena': 'eggplant'},
    {'calabacín': 'zucchini'},
    {'champiñón': 'mushroom'},
    {'espinaca': 'spinach'},
    {'brócoli': 'broccoli'},
    {'coliflor': 'cauliflower'},
    {'calabaza': 'pumpkin'},
    {'chile': 'chili'},
    {'pimiento': 'bell pepper'},
    {'chile jalapeño': 'jalapeno'},
    {'cilantro': 'cilantro'},
    {'albahaca': 'basil'},
    {'romero': 'rosemary'},
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
          'Speech Craft: Spanish Words',
          style: TextStyle(fontSize: 23, color: Colors.white), 
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
                        text: spanishWords[_currentIndex].keys.first,
                        rotation: _frontRotation,
                        label: 'Spanish Word',
                      ),
                      _buildWord(
                        text: spanishWords[_currentIndex].values.first,
                        rotation: _backRotation,
                        label: 'English Meaning',
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
                if (_currentIndex < spanishWords.length - 1) {
                  setState(() {
                    _currentIndex++;
                    _showEnglishMeaning = false;
                  });
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WordQuiz()));
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
        percentage: (_currentIndex + 1) / spanishWords.length,
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
              _buildMenuItem(context, "Exit"),
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
