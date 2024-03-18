import 'package:flutter/material.dart';
import 'alphabets1.dart';
import 'numbers1.dart';
import 'words.dart';
import 'phrases.dart';
import 'grammar.dart'; 
import 'main.dart';
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
          'Speech Craft: Quizzes',
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
            _buildQuizBox(context, "Alphabet Quiz", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AlphabetQuiz()));
            }),
            _buildQuizBox(context, "Number Quiz", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NumberQuiz()));
            }),
            _buildQuizBox(context, "Word Quiz", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WordQuiz()));
            }),
            _buildQuizBox(context, "Phrase Quiz", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PhraseQuiz()));
            }),
            _buildQuizBox(context, "Grammar Quiz", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GrammarQuiz()));
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildQuizBox(BuildContext context, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
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

class AlphabetQuiz extends StatefulWidget {
  @override
  _AlphabetQuizState createState() => _AlphabetQuizState();
}

class _AlphabetQuizState extends State<AlphabetQuiz> {
  int currentQuestionIndex = 0;
  List<Map<String, dynamic>> quizData = [
    {
      'question': 'What is the Spanish alphabet letter "B" pronounced as?',
      'options': ['a) BEH', 'b) SEH', 'c) AH', 'd) EE'],
      'answer': 'a) BEH',
    },
    {
      'question': 'Which letter in Spanish is pronounced as "HOH-TAH"?',
      'options': ['a) H', 'b) J', 'c) K', 'd) L'],
      'answer': 'b) J',
    },
    {
      'question': 'How is the letter "O" pronounced in Spanish?',
      'options': ['a) OH', 'b) EE', 'c) KOO', 'd) BEH'],
      'answer': 'a) OH',    
    },
    {
      'question': 'What is the pronunciation of the Spanish letter "Ñ"?',
      'options': ['a) EH-NYE', 'b) EH-MEH', 'c) BEH', 'd) AH-CHEH'],
      'answer': 'a) EH-NYE',
    },
    {
      'question': 'Which letter in Spanish is pronounced as "EH-REH"?',
      'options': ['a) R', 'b) S', 'c) T', 'd) U'],
      'answer': 'a) R',
    },
    {
      'question': 'How is the letter "W" pronounced in Spanish?',
      'options': ['a) DOH-BLEH-OO', 'b) EH-KEES', 'c) EE-GRIEH-GAH', 'd) SEH'],
      'answer': 'a) DOH-BLEH-OO',
    },
    {
      'question': 'What is the pronunciation of the Spanish letter "X"?',
      'options': ['a) OH', 'b) PEH', 'c) EH-KEES', 'd) TEH'],
      'answer': 'c) EH-KEES',
    },
    {
      'question': 'Which letter in Spanish is pronounced as "BEH"?',
      'options': ['a) V', 'b) W', 'c) Y', 'd) Z'],
      'answer': 'a) V',
    },
    {
      'question': 'How is the letter "C" pronounced in Spanish?',
      'options': ['a) BEH', 'b) SEH', 'c) EE', 'd) AH'],
      'answer': 'b) SEH',
    },
    {
      'question': 'What is the pronunciation of the Spanish letter "G"?',
      'options': ['a) HEH', 'b) HOH-TAH', 'c) EE', 'd) BEH'],
      'answer': 'a) HEH',
    }
  ];

  String? selectedAnswer;
  bool showResult = false;

  void checkAnswer() {
    setState(() {
      showResult = true;
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
        selectedAnswer = null;
        showResult = false;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswer = null;
      showResult = false;
    });
  }

  Color getAnswerColor(String option) {
    if (showResult) {
      if (option == quizData[currentQuestionIndex]['answer']) {
        return Colors.green;
      } else if (option == selectedAnswer && option != quizData[currentQuestionIndex]['answer']) {
        return Colors.red;
      }
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Alphabet Quiz',
          style: TextStyle(fontSize: 21, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quizData[currentQuestionIndex]['question']),
            Column(
              children: List.generate(
                quizData[currentQuestionIndex]['options'].length,
                (index) {
                  String option = quizData[currentQuestionIndex]['options'][index];
                  return _buildAnswerButton(option);
                },
              ),
            ),
            SizedBox(height: 20),
            showResult
                ? Text(
                    selectedAnswer == quizData[currentQuestionIndex]['answer']
                        ? 'Correct!'
                        : 'Incorrect. Correct answer is: ${quizData[currentQuestionIndex]['answer']}',
                    style: TextStyle(
                      color: selectedAnswer == quizData[currentQuestionIndex]['answer'] ? Colors.green : Colors.red,
                    ),
                  )
                : Container(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: currentQuestionIndex < quizData.length - 1 ? nextQuestion : () {
                Navigator.of(context).pop();
              },
              child: Text(currentQuestionIndex < quizData.length - 1 ? 'Next Question' : 'Finish'),
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text('Reset Quiz'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(String option) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          if (!showResult) {
            setState(() {
              selectedAnswer = option;
              checkAnswer();
            });
          }
        },
        child: Text(option),
        style: ElevatedButton.styleFrom(primary: getAnswerColor(option)),
      ),
    );
  }
}

class NumberQuiz extends StatefulWidget {
  @override
  _NumberQuizState createState() => _NumberQuizState();
}

class _NumberQuizState extends State<NumberQuiz> {
  int currentQuestionIndex = 0;
  List<Map<String, dynamic>> quizData = [
    {
      'question': 'How do you say "8" in Spanish?',
      'options': ['a) ocho', 'b) doscientos', 'c) cincuenta', 'd) cuarenta'],
      'answer': 'a) ocho',
    },
    {
      'question': 'Which number in Spanish translates to "60"?',
      'options': ['a) cien', 'b) novecientos', 'c) sesenta', 'd) trece'],
      'answer': 'c) sesenta',
    },
    {
      'question': 'What does "1000" translate to in Spanish?',
      'options': ['a) un millón', 'b) mil', 'c) cien', 'd) catorce'],
      'answer': 'b) mil',
    },
    {
      'question': 'How do you say "40" in Spanish?',
      'options': ['a) cincuenta', 'b) veinte', 'c) cuarenta', 'd) setecientos'],
      'answer': 'c) cuarenta',
    },
    {
      'question': 'Which number in Spanish is "novecientos"?',
      'options': ['a) 900', 'b) 90', 'c) 100', 'd) 1000'],
      'answer': 'a) 900',
    },
    {
      'question': 'What is "100000" in Spanish?',
      'options': ['a) cien mil', 'b) cien millones', 'c) mil millones', 'd) diez mil'],
      'answer': 'a) cien mil',
    },
    {
      'question': 'How do you say "15" in Spanish?',
      'options': ['a) quince', 'b) ciento cinco', 'c) veinte', 'd) cincuenta'],
      'answer': 'a) quince',
    },
    {
      'question': 'Which number translates to "200" in Spanish?',
      'options': ['a) doscientos', 'b) trescientos', 'c) ciento veinte', 'd) diez mil'],
      'answer': 'a) doscientos',
    },
    {
      'question': 'What is "500" in Spanish?',
      'options': ['a) cinco', 'b) quinientos', 'c) cien', 'd) cuarenta'],
      'answer': 'b) quinientos',
    },
    {
      'question': 'How do you say "10000" in Spanish?',
      'options': ['a) diez mil', 'b) cien mil', 'c) un millón', 'd) cien millones'],
      'answer': 'a) diez mil',
    },
    {
      'question': 'Which number is "seis" in Spanish?',
      'options': ['a) 6', 'b) 16', 'c) 60', 'd) 600'],
      'answer': 'a) 6',
    },
    {
      'question': 'What does "30" translate to in Spanish?',
      'options': ['a) treinta', 'b) trescientos', 'c) tres', 'd) tres mil'],
      'answer': 'a) treinta',
    },
    {
      'question': 'How do you say "18" in Spanish?',
      'options': ['a) ochenta', 'b) dieciocho', 'c) ciento ochenta', 'd) ochocientos'],
      'answer': 'b) dieciocho',
    },
    {
      'question': 'Which number is "setecientos" in Spanish?',
      'options': ['a) 700', 'b) 70', 'c) 7000', 'd) 70,000'],
      'answer': 'a) 700',
    },
    {
      'question': 'What is "ninety" in Spanish?',
      'options': ['a) noventa', 'b) novecientos', 'c) nueve', 'd) nueve mil'],
      'answer': 'a) noventa',
    }
  ];

  String? selectedAnswer;
  bool showResult = false;

  void checkAnswer() {
    setState(() {
      showResult = true;
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
        selectedAnswer = null;
        showResult = false;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswer = null;
      showResult = false;
    });
  }

  Color getAnswerColor(String option) {
    if (showResult) {
      if (option == quizData[currentQuestionIndex]['answer']) {
        return Colors.green;
      } else if (option == selectedAnswer && option != quizData[currentQuestionIndex]['answer']) {
        return Colors.red;
      }
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Number Quiz',
          style: TextStyle(fontSize: 21, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quizData[currentQuestionIndex]['question']),
            Column(
              children: List.generate(
                quizData[currentQuestionIndex]['options'].length,
                (index) {
                  String option = quizData[currentQuestionIndex]['options'][index];
                  return _buildAnswerButton(option);
                },
              ),
            ),
            SizedBox(height: 20),
            showResult
                ? Text(
                    selectedAnswer == quizData[currentQuestionIndex]['answer']
                        ? 'Correct!'
                        : 'Incorrect. Correct answer is: ${quizData[currentQuestionIndex]['answer']}',
                    style: TextStyle(
                      color: selectedAnswer == quizData[currentQuestionIndex]['answer'] ? Colors.green : Colors.red,
                    ),
                  )
                : Container(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: currentQuestionIndex < quizData.length - 1 ? nextQuestion : () {
                Navigator.of(context).pop();
              },
              child: Text(currentQuestionIndex < quizData.length - 1 ? 'Next Question' : 'Finish'),
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text('Reset Quiz'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(String option) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          if (!showResult) {
            setState(() {
              selectedAnswer = option;
              checkAnswer();
            });
          }
        },
        child: Text(option),
        style: ElevatedButton.styleFrom(primary: getAnswerColor(option)),
      ),
    );
  }
}

class WordQuiz extends StatefulWidget {
  @override
  _WordQuizState createState() => _WordQuizState();
}

class _WordQuizState extends State<WordQuiz> {
  int currentQuestionIndex = 0;
  List<Map<String, dynamic>> quizData = [
  {
      'question': 'What does "hola" mean in English?',
      'options': ['a) goodbye', 'b) hello', 'c) thank you', 'd) please'],
      'answer': 'b) hello',
    },
    {
      'question': 'How do you say "goodbye" in Spanish?',
      'options': ['a) gracias', 'b) adiós', 'c) por favor', 'd) sí'],
      'answer': 'b) adiós',
    },
    {
      'question': 'What is the Spanish word for "thank you"?',
      'options': ['a) bueno', 'b) malo', 'c) grande', 'd) gracias'],
      'answer': 'd) gracias',
    },
    {
      'question': 'Which word means "please" in Spanish?',
      'options': ['a) sí', 'b) no', 'c) bueno', 'd) por favor'],
      'answer': 'd) por favor',
    },
    {
      'question': 'What is the English translation for "sí"?',
      'options': ['a) yes', 'b) no', 'c) good', 'd) bad'],
      'answer': 'a) yes',
    },
    {
      'question': 'How do you say "small" in Spanish?',
      'options': ['a) grande', 'b) pequeño', 'c) amor', 'd) amigo'],
      'answer': 'b) pequeño',
    },
    {
      'question': 'Which word means "family"?',
      'options': ['a) calle', 'b) familia', 'c) comida', 'd) agua'],
      'answer': 'b) familia',
    },
    {
      'question': 'What does "calle" translate to in English?',
      'options': ['a) house', 'b) street', 'c) food', 'd) water'],
      'answer': 'b) street',
    },
    {
      'question': 'How do you say "water" in Spanish?',
      'options': ['a) vino', 'b) agua', 'c) cerveza', 'd) playa'],
      'answer': 'b) agua',
    },
    {
      'question': 'What is the Spanish word for "sun"?',
      'options': ['a) sol', 'b) luna', 'c) estrella', 'd) jardín'],
      'answer': 'a) sol',
    },
    {
      'question': 'Which word means "bread"?',
      'options': ['a) pan', 'b) queso', 'c) carne', 'd) pescado'],
      'answer': 'a) pan',
    },
    {
      'question': 'What does "fruit" translate to in Spanish?',
      'options': ['a) fruta', 'b) manzana', 'c) plátano', 'd) naranja (fruta)'],
      'answer': 'a) fruta',
    },
    {
      'question': 'How do you say "egg" in Spanish?',
      'options': ['a) melón', 'b) huevo', 'c) leche', 'd) café'],
      'answer': 'b) huevo',
    },
    {
      'question': 'What is the English translation for "leche"?',
      'options': ['a) water', 'b) milk', 'c) coffee', 'd) tea'],
      'answer': 'b) milk',
    },
    {
      'question': 'What does "pollo" mean in English?',
      'options': ['a) beef', 'b) chicken', 'c) pork', 'd) lamb'],
      'answer': 'b) chicken',
    },
    {
      'question': 'How do you say "pizza" in Spanish?',
      'options': ['a) pizza', 'b) ensalada', 'c) sopa', 'd) arroz'],
      'answer': 'a) pizza',
    },
    {
      'question': 'What is the Spanish word for "seafood"?',
      'options': ['a) carne de res', 'b) marisco', 'c) ensalada', 'd) aderezo'],
      'answer': 'b) marisco',
    },
    {
      'question': 'Which word means "tomato"?',
      'options': ['a) tomate', 'b) pepino', 'c) lechuga', 'd) cebolla'],
      'answer': 'a) tomate',
    },
    {
      'question': 'How do you say "potato" in Spanish?',
      'options': ['a) papa', 'b) ajo', 'c) berenjena', 'd) calabacín'],
      'answer': 'a) papa',
    },
    {
      'question': 'What is the English translation for "ajo"?',
      'options': ['a) onion', 'b) garlic', 'c) bell pepper', 'd) mushroom'],
      'answer': 'b) garlic',
    }
   
  ];

  String? selectedAnswer;
  bool showResult = false;

  void checkAnswer() {
    setState(() {
      showResult = true;
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
        selectedAnswer = null;
        showResult = false;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswer = null;
      showResult = false;
    });
  }

  Color getAnswerColor(String option) {
    if (showResult) {
      if (option == quizData[currentQuestionIndex]['answer']) {
        return Colors.green;
      } else if (option == selectedAnswer && option != quizData[currentQuestionIndex]['answer']) {
        return Colors.red;
      }
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Word Quiz',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quizData[currentQuestionIndex]['question']),
            Column(
              children: List.generate(
                quizData[currentQuestionIndex]['options'].length,
                (index) {
                  String option = quizData[currentQuestionIndex]['options'][index];
                  return _buildAnswerButton(option);
                },
              ),
            ),
            SizedBox(height: 20),
            showResult
                ? Text(
                    selectedAnswer == quizData[currentQuestionIndex]['answer']
                        ? 'Correct!'
                        : 'Incorrect. Correct answer is: ${quizData[currentQuestionIndex]['answer']}',
                    style: TextStyle(
                      color: selectedAnswer == quizData[currentQuestionIndex]['answer'] ? Colors.green : Colors.red,
                    ),
                  )
                : Container(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: currentQuestionIndex < quizData.length - 1 ? nextQuestion : () {
                Navigator.of(context).pop();
              },
              child: Text(currentQuestionIndex < quizData.length - 1 ? 'Next Question' : 'Finish'),
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text('Reset Quiz'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(String option) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          if (!showResult) {
            setState(() {
              selectedAnswer = option;
              checkAnswer();
            });
          }
        },
        child: Text(option),
        style: ElevatedButton.styleFrom(primary: getAnswerColor(option)),
      ),
    );
  }
}
class PhraseQuiz extends StatefulWidget {
  @override
  _PhraseQuizState createState() => _PhraseQuizState();
}

class _PhraseQuizState extends State<PhraseQuiz> {
  int currentQuestionIndex = 0;
  List<Map<String, dynamic>> quizData = [
    {
      'question': 'How do you say "Enjoy your meal!" in Spanish?',
      'options': ['a) ¡Buen provecho!', 'b) ¡Salud!', 'c) Hasta luego', 'd) Felicidades'],
      'answer': 'a) ¡Buen provecho!',
    },
    {
      'question': 'What is the English translation for "Feliz año nuevo"?',
      'options': ['a) Happy New Year', 'b) Happy birthday', 'c) Happy holidays', 'd) Have a good trip'],
      'answer': 'a) Happy New Year',
    },
    {
      'question': 'Which phrase means "I\'m learning Spanish"?',
      'options': ['a) Estoy aprendiendo español', 'b) Te quiero', 'c) Necesito un médico', 'd) ¿Puedo pagar con tarjeta?'],
      'answer': 'a) Estoy aprendiendo español',
    },
    {
      'question': 'What does "Tengo hambre" mean in English?',
      'options': ['a) I\'m hungry', 'b) I\'m thirsty', 'c) It\'s hot', 'd) It\'s cold'],
      'answer': 'a) I\'m hungry',
    },
    {
      'question': 'How do you say "Can I take a photo?" in Spanish?',
      'options': ['a) ¿Puedo tomar una foto?', 'b) Me duele...', 'c) ¿Puedes hablar más despacio?', 'd) Está soleado'],
      'answer': 'a) ¿Puedo tomar una foto?',
    },
    {
      'question': 'What is the Spanish translation for "I\'m lost"?',
      'options': ['a) Estoy perdido/a', 'b) No entiendo nada', 'c) ¿Cuánto cuesta esto?', 'd) Me llamo...'],
      'answer': 'a) Estoy perdido/a',
    },
    {
      'question': 'Which phrase means "Congratulations!"?',
      'options': ['a) Estoy de acuerdo', 'b) ¡Felicidades!', 'c) Por favor', 'd) Es posible'],
      'answer': 'b) ¡Felicidades!',
    },
    {
      'question': 'How do you ask "What is this?" in Spanish?',
      'options': ['a) ¿Qué es esto?', 'b) Me gusta', 'c) No me gusta', 'd) Más despacio, por favor'],
      'answer': 'a) ¿Qué es esto?',
    },
    {
      'question': 'What does "It\'s hot" translate to in Spanish?',
      'options': ['a) Hace frío', 'b) Hace calor', 'c) Está lloviendo', 'd) Está soleado'],
      'answer': 'b) Hace calor',
    },
    {
      'question': 'Which word means "Be careful!"?',
      'options': ['a) ¡Cuidado!', 'b) ¡Felicidades!', 'c) Estoy emocionado/a', 'd) No estoy de acuerdo'],
      'answer': 'a) ¡Cuidado!',
    },
    {
      'question': 'How do you say "I disagree" in Spanish?',
      'options': ['a) No estoy de acuerdo', 'b) Me siento...', 'c) Tal vez', 'd) Por supuesto'],
      'answer': 'a) No estoy de acuerdo',
    },
    {
      'question': 'What is the English translation for "Me gustaría reservar..."?',
      'options': ['a) I need help', 'b) I\'m interested in...', 'c) I would like to reserve...', 'd) I\'m learning Spanish'],
      'answer': 'c) I would like to reserve...',
    },
    {
      'question': 'What does "Necesito un médico" mean?',
      'options': ['a) I need a doctor', 'b) How old are you?', 'c) Do you speak English?', 'd) It\'s urgent'],
      'answer': 'a) I need a doctor',
    },
    {
      'question': 'How do you ask "What time do you open/close?" in Spanish?',
      'options': ['a) ¿A qué hora abre/cierra?', 'b) ¿Tienes wifi?', 'c) ¿Cuánto tiempo?', 'd) ¿Cómo llego a...?'],
      'answer': 'a) ¿A qué hora abre/cierra?',
    },
    {
      'question': 'What is the Spanish translation for "I understand"?',
      'options': ['a) Entiendo', 'b) ¿Hablas inglés?', 'c) ¿Puedes ayudarme?', 'd) No entiendo'],
      'answer': 'a) Entiendo',
    },
    {
      'question': 'Which phrase means "How old are you?"?',
      'options': ['a) ¿Cuántos años tienes?', 'b) Estoy emocionado/a', 'c) Necesito ayuda', 'd) Me siento...'],
      'answer': 'a) ¿Cuántos años tienes?',
    },
    {
      'question': 'How do you say "It\'s possible" in Spanish?',
      'options': ['a) Es posible', 'b) ¿Cuánto cuesta esto?', 'c) ¿Puedes hablar más despacio?', 'd) ¿Dónde está...?'],
      'answer': 'a) Es posible',
    },
    {
      'question': 'What does "Nice to meet you" translate to in Spanish?',
      'options': ['a) Encantado/a', 'b) Una cerveza, por favor', 'c) El menú, por favor', 'd) La cuenta, por favor'],
      'answer': 'a) Encantado/a',
    },
    {
      'question': 'What is the Spanish translation for "Of course"?',
      'options': ['a) Claro', 'b) No hay problema', 'c) Estoy perdido/a', 'd) ¿Qué recomiendas?'],
      'answer': 'a) Claro',
    },
    {
      'question': 'How do you ask "Do you have wifi?" in Spanish?',
      'options': ['a) ¿Tienes wifi?', 'b) ¿Puedo pagar con tarjeta?', 'c) Solo efectivo', 'd) ¿Cuál es tu nombre?'],
      'answer': 'a) ¿Tienes wifi?',
    }
  ];

  String? selectedAnswer;
  bool showResult = false;

  void checkAnswer() {
    setState(() {
      showResult = true;
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
        selectedAnswer = null;
        showResult = false;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswer = null;
      showResult = false;
    });
  }

  Color getAnswerColor(String option) {
    if (showResult) {
      if (option == quizData[currentQuestionIndex]['answer']) {
        return Colors.green;
      } else if (option == selectedAnswer && option != quizData[currentQuestionIndex]['answer']) {
        return Colors.red;
      }
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Phrase Quiz',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quizData[currentQuestionIndex]['question']),
            Column(
              children: List.generate(
                quizData[currentQuestionIndex]['options'].length,
                (index) {
                  String option = quizData[currentQuestionIndex]['options'][index];
                  return _buildAnswerButton(option);
                },
              ),
            ),
            SizedBox(height: 20),
            showResult
                ? Text(
                    selectedAnswer == quizData[currentQuestionIndex]['answer']
                        ? 'Correct!'
                        : 'Incorrect. Correct answer is: ${quizData[currentQuestionIndex]['answer']}',
                    style: TextStyle(
                      color: selectedAnswer == quizData[currentQuestionIndex]['answer'] ? Colors.green : Colors.red,
                    ),
                  )
                : Container(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: currentQuestionIndex < quizData.length - 1 ? nextQuestion : () {
                Navigator.of(context).pop();
              },
              child: Text(currentQuestionIndex < quizData.length - 1 ? 'Next Question' : 'Finish'),
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text('Reset Quiz'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(String option) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          if (!showResult) {
            setState(() {
              selectedAnswer = option;
              checkAnswer();
            });
          }
        },
        child: Text(option),
        style: ElevatedButton.styleFrom(primary: getAnswerColor(option)),
      ),
    );
  }
}

class GrammarQuiz extends StatefulWidget {
  @override
  _GrammarQuizState createState() => _GrammarQuizState();
}

class _GrammarQuizState extends State<GrammarQuiz> {
  int currentQuestionIndex = 0;
  List<Map<String, dynamic>> quizData = [
    {
      'question': 'What role do nouns and articles play in Spanish grammar?',
      'options': ['a) They indicate verb conjugation', 'b) They express relationships between elements', 'c) They represent people, places, things, or ideas and indicate their definiteness and number', 'd) They modify adjectives'],
      'answer': 'c) They represent people, places, things, or ideas and indicate their definiteness and number',
    },
    {
      'question': 'What is the purpose of gender and number agreement in Spanish nouns and articles?',
      'options': ['a) To confuse language learners', 'b) To emphasize the importance of pronunciation', 'c) To indicate tense in sentences', 'd) To ensure consistency and clarity in language usage'],
      'answer': 'd) To ensure consistency and clarity in language usage',
    },
    {
      'question': 'Which of the following is an example of a definite article in Spanish?',
      'options': ['a) Un', 'b) Una', 'c) El', 'd) Una'],
      'answer': 'c) El',
    },
    {
      'question': 'How do indefinite articles differ from definite articles in Spanish?',
      'options': ['a) Indefinite articles indicate specific nouns, while definite articles do not.', 'b) Definite articles are used before masculine nouns, while indefinite articles are used before feminine nouns.', 'c) Indefinite articles are used to refer to nonspecific nouns, while definite articles are used to refer to specific nouns.', 'd) Definite articles have plural forms, while indefinite articles do not.'],
      'answer': 'c) Indefinite articles are used to refer to nonspecific nouns, while definite articles are used to refer to specific nouns.',
    },
    {
      'question': 'What role do verbs play in Spanish sentences?',
      'options': ['a) They modify nouns', 'b) They indicate tense and express what the subject is doing', 'c) They represent relationships between elements', 'd) They describe the characteristics of nouns'],
      'answer': 'b) They indicate tense and express what the subject is doing',
    },
    {
      'question': 'Which type of verbs follow predictable patterns in their conjugation based on their endings?',
      'options': ['a) Irregular verbs', 'b) Reflexive verbs', 'c) Regular verbs', 'd) Modal verbs'],
      'answer': 'c) Regular verbs',
    },
    {
      'question': 'Which verb is irregular in its conjugation in the present tense: "ser", "estar", or "tener"?',
      'options': ['a) Ser', 'b) Estar', 'c) Tener', 'd) All of the above'],
      'answer': 'd) All of the above',
    },
    {
      'question': 'What do possessive adjectives indicate in Spanish?',
      'options': ['a) Ownership or possession', 'b) Verb tense', 'c) Subject-verb agreement', 'd) Sentence structure'],
      'answer': 'a) Ownership or possession',
    },
    {
      'question': 'How do possessive adjectives agree with nouns in Spanish?',
      'options': ['a) They remain the same regardless of gender and number.', 'b) They change based on the gender and number of the noun they modify.', 'c) They are always plural.', 'd) They have different forms for singular and plural nouns.'],
      'answer': 'b) They change based on the gender and number of the noun they modify.',
    },
    {
      'question': 'What do adjectives describe in Spanish sentences?',
      'options': ['a) Verbs', 'b) Pronouns', 'c) Nouns', 'd) Prepositions'],
      'answer': 'c) Nouns',
    },
    {
      'question': 'Which of the following is NOT a common adjective used to describe people and objects in Spanish?',
      'options': ['a) Grande', 'b) Pequeño', 'c) Bueno', 'd) Inteligente'],
      'answer': 'd) Inteligente',
    },
    {
      'question': 'What do prepositions express in a sentence?',
      'options': ['a) Time and tense', 'b) Relationships between different elements', 'c) Subject-verb agreement', 'd) Verb conjugation'],
      'answer': 'b) Relationships between different elements',
    },
    {
      'question': 'Which preposition is used to indicate possession or origin in Spanish?',
      'options': ['a) A', 'b) De', 'c) En', 'd) Por'],
      'answer': 'b) De',
    },
    {
      'question': 'What is the correct preposition to use in the sentence: "Voy __ la tienda" (I\'m going to the store)?',
      'options': ['a) A', 'b) De', 'c) En', 'd) Por'],
      'answer': 'a) A',
    },
    {
      'question': 'In the phrase "al lado de," what does "al" mean?',
      'options': ['a) At', 'b) To', 'c) With', 'd) On'],
      'answer': 'a) At',
    },
    {
      'question': 'Which word order represents the structure of a typical Spanish sentence?',
      'options': ['a) Object-Subject-Verb (OSV)', 'b) Verb-Object-Subject (VOS)', 'c) Subject-Verb-Object (SVO)', 'd) Verb-Subject-Object (VSO)'],
      'answer': 'c) Subject-Verb-Object (SVO)',
    },
    {
      'question': 'In the sentence "Ella es una chica inteligente," what part of speech is "inteligente"?',
      'options': ['a) Noun', 'b) Adjective', 'c) Verb', 'd) Pronoun'],
      'answer': 'b) Adjective',
    },
    {
      'question': 'Which sentence structure places the subject after the verb in Spanish?',
      'options': ['a) Subject-Verb-Adjective-Noun (SVAN)', 'b) Adjective-Noun-Verb (ANV)', 'c) Verb-Subject-Adjective-Noun (VSAN)', 'd) Noun-Verb-Adjective (NVA)'],
      'answer': 'd) Noun-Verb-Adjective (NVA)',
    },
    {
      'question': 'Which of the following sentences demonstrates correct subject-verb agreement in Spanish?',
      'options': ['a) Nosotros habla español. (We speak Spanish.)', 'b) Él come manzanas. (He eats apples.)', 'c) Tú estudio en la universidad. (You study at the university.)', 'd) Ellas correr en el parque. (They run in the park.)'],
      'answer': 'b) Él come manzanas. (He eats apples.)',
    },
    {
      'question': 'What is the purpose of practicing different sentence constructions in Spanish?',
      'options': ['a) To confuse language learners', 'b) To reinforce understanding of grammar rules', 
      'c) To demonstrate proficiency in speaking', 'd) To memorize vocabulary words'],
      'answer': 'b) To reinforce understanding of grammar rules',
    },
    {
      'question': 'Which of the following sentences demonstrates correct gender and number agreement in Spanish?',
      'options': ['a) El perro blanco (The white dog)', 'b) La libros rojo (The red books)', 'c) Los casa grande (The big houses)', 'd) Las niño pequeños (The small boys)'],
      'answer': 'a) El perro blanco (The white dog)',
    },
    {
      'question': 'What role do possessive adjectives play in Spanish sentences?',
      'options': ['a) They indicate ownership or possession of nouns', 'b) They modify adverbs', 'c) They express relationships between different elements', 'd) They represent subject pronouns'],
      'answer': 'a) They indicate ownership or possession of nouns',
    },
    {
      'question': 'Which preposition is used to indicate movement or direction toward a location in Spanish?',
      'options': ['a) De', 'b) En', 'c) A', 'd) Con'],
      'answer': 'c) A',
    },
    {
      'question': 'What type of word do adjectives describe in Spanish sentences?',
      'options': ['a) Verbs', 'b) Prepositions', 'c) Nouns', 'd) Pronouns'],
      'answer': 'c) Nouns',
    },
    {
      'question': 'Which word order is commonly used in Spanish sentences?',
      'options': ['a) Verb-Object-Subject (VOS)', 'b) Object-Subject-Verb (OSV)', 'c) Subject-Verb-Object (SVO)', 'd) Subject-Object-Verb (SOV)'],
      'answer': 'c) Subject-Verb-Object (SVO)',
    }
  ];

  String? selectedAnswer;
  bool showResult = false;

  void checkAnswer() {
    setState(() {
      showResult = true;
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
        selectedAnswer = null;
        showResult = false;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswer = null;
      showResult = false;
    });
  }

  Color getAnswerColor(String option) {
    if (showResult) {
      if (option == quizData[currentQuestionIndex]['answer']) {
        return Colors.green;
      } else if (option == selectedAnswer && option != quizData[currentQuestionIndex]['answer']) {
        return Colors.red;
      }
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Grammar Quiz',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quizData[currentQuestionIndex]['question']),
            Column(
              children: List.generate(
                quizData[currentQuestionIndex]['options'].length,
                (index) {
                  String option = quizData[currentQuestionIndex]['options'][index];
                  return _buildAnswerButton(option);
                },
              ),
            ),
            SizedBox(height: 20),
            showResult
                ? Text(
                    selectedAnswer == quizData[currentQuestionIndex]['answer']
                        ? 'Correct!'
                        : 'Incorrect. Correct answer is: ${quizData[currentQuestionIndex]['answer']}',
                    style: TextStyle(
                      color: selectedAnswer == quizData[currentQuestionIndex]['answer'] ? Colors.green : Colors.red,
                    ),
                  )
                : Container(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: currentQuestionIndex < quizData.length - 1 ? nextQuestion : () {
                Navigator.of(context).pop();
              },
              child: Text(currentQuestionIndex < quizData.length - 1 ? 'Next Question' : 'Finish'),
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text('Reset Quiz'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(String option) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          if (!showResult) {
            setState(() {
              selectedAnswer = option;
              checkAnswer();
            });
          }
        },
        child: Text(option),
        style: ElevatedButton.styleFrom(primary: getAnswerColor(option)),
      ),
    );
  }
}
