import 'package:flutter/material.dart';
import 'main.dart';
import 'alphabets1.dart'; 
import 'numbers1.dart'; 
import 'words.dart'; 
import 'grammar.dart'; 
import 'quizzes.dart';
import 'login_reg_page.dart';

void main() {
  runApp(Phrases());
}

class Phrases extends StatelessWidget {
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
      home: SpanishPhrasesPage(),
    );
  }
}

class SpanishPhrasesPage extends StatefulWidget {
  @override
  _SpanishPhrasesPageState createState() => _SpanishPhrasesPageState();
}

class _SpanishPhrasesPageState extends State<SpanishPhrasesPage> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  bool _showEnglishMeaning = false;

  List<Map<String, String>> spanishWords = [
    {"Buenos días" : "Good morning"},
    {"Buenas tardes" : "Good afternoon"},
    {"Buenas noches" : "Good night"},
    {"¿Cómo estás?" : "How are you?"},
    {"Muy bien, gracias. ¿Y tú?" : "Very well, thank you. And you?"},
    {"Por favor" : "Please"},
    {"Gracias" : "Thank you"},
    {"De nada" : "You're welcome"},
    {"Lo siento" : "I'm sorry"},
    {"¿Cuánto cuesta esto?" : "How much does this cost?"},
    {"No entiendo" : "I don't understand"},
    {"¿Puedes hablar más despacio?" : "Can you speak slower?"},
    {"¿Dónde está el baño?" : "Where is the bathroom?"},
    {"Me llamo..." : "My name is..."},
    {"¿Cómo te llamas?" : "What's your name?"},
    {"Encantado/a" : "Nice to meet you"},
    {"¿De dónde eres?" : "Where are you from?"},
    {"Soy de..." : "I'm from..."},
    {"Hablo un poco de español" : "I speak a little Spanish"},
    {"¿Puedes ayudarme?" : "Can you help me?"},
    {"Claro" : "Of course"},
    {"No hay problema" : "No problem"},
    {"Estoy perdido/a" : "I'm lost"},
    {"¿Qué hora es?" : "What time is it?"},
    {"¿Tienes hora?" : "Do you have the time?"},
    {"Una cerveza, por favor" : "A beer, please"},
    {"El menú, por favor" : "The menu, please"},
    {"La cuenta, por favor" : "The bill, please"},
    {"¿Dónde está...?" : "Where is...?"},
    {"Aquí" : "Here"},
    {"Allí" : "There"},
    {"¿Cómo llego a...?" : "How do I get to...?"},
    {"Gire a la derecha" : "Turn right"},
    {"Gire a la izquierda" : "Turn left"},
    {"Siga recto" : "Go straight ahead"},
    {"Pare" : "Stop"},
    {"Disculpa" : "Excuse me"},
    {"Está bien" : "It's okay"},
    {"¿Qué recomiendas?" : "What do you recommend?"},
    {"¿Cuál es tu nombre?" : "What's your name?"},
    {"Este" : "This"},
    {"Ese" : "That"},
    {"Un momento, por favor" : "One moment, please"},
    {"No hablo español muy bien" : "I don't speak Spanish very well"},
    {"¿Puedo pagar con tarjeta?" : "Can I pay with a card?"},
    {"Solo efectivo" : "Cash only"},
    {"¿Tienes wifi?" : "Do you have wifi?"},
    {"La contraseña del wifi" : "The wifi password"},
    {"¿Puedo tener el recibo?" : "Can I have the receipt?"},
    {"¿A qué hora abre/cierra?" : "What time do you open/close?"},
    {"Estoy aquí por negocios/vacaciones" : "I'm here for business/vacation"},
    {"Me gustaría reservar..." : "I would like to reserve..."},
    {"¿Tienes disponibilidad?" : "Do you have availability?"},
    {"¿Cuánto tiempo?" : "For how long?"},
    {"Hasta luego" : "See you later"},
    {"Adiós" : "Goodbye"},
    {"Buen viaje" : "Have a good trip"},
    {"Feliz cumpleaños" : "Happy birthday"},
    {"Felices fiestas" : "Happy holidays"},
    {"Feliz año nuevo" : "Happy New Year"},
    {"Estoy emocionado/a" : "I'm excited"},
    {"Estoy cansado/a" : "I'm tired"},
    {"Tengo hambre" : "I'm hungry"},
    {"Tengo sed" : "I'm thirsty"},
    {"Hace calor" : "It's hot"},
    {"Hace frío" : "It's cold"},
    {"Está lloviendo" : "It's raining"},
    {"Está soleado" : "It's sunny"},
    {"¿Qué es esto?" : "What is this?"},
    {"Me gusta" : "I like"},
    {"No me gusta" : "I don't like"},
    {"Más despacio, por favor" : "Slower, please"},
    {"¿Puede repetir eso?" : "Can you repeat that?"},
    {"Entiendo" : "I understand"},
    {"No entiendo nada" : "I don't understand anything"},
    {"¿Hablas inglés?" : "Do you speak English?"},
    {"Necesito ayuda" : "I need help"},
    {"Estoy buscando..." : "I'm looking for..."},
    {"Me duele..." : "My... hurts"},
    {"Necesito un médico" : "I need a doctor"},
    {"Es urgente" : "It's urgent"},
    {"¡Cuidado!" :"Be careful!"},
    {"¡Felicidades!" : "Congratulations!"},
    {"Estoy de acuerdo" : "I agree"},
    {"No estoy de acuerdo" : "I disagree"},
    {"Tal vez" : "Maybe"},
    {"Por supuesto" : "Of course"},
    {"Es posible" : "It's possible"},
    {"Es imposible" : "It's impossible"},
    {"¿Cuántos años tienes?" : "How old are you?"},
    {"Tengo... años" : "I am... years old"},
    {"Estoy aprendiendo español" : "I'm learning Spanish"},
    {"Hablamos más tarde" : "We'll talk later"},
    {"Te quiero" : "I love you"},
    {"Me siento..." : "I feel..."},
    {"Estoy interesado/a en..." : "I'm interested in..."},
    {"¿Puedo tomar una foto?" : "Can I take a photo?"},
    {"¡Salud!" : "Cheers!"},
    {"¡Buen provecho!" : "Enjoy your meal!"},
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
          'Speech Craft: Spanish Phrases',
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
                        label: 'Spanish Phrase',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PhraseQuiz()));
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
