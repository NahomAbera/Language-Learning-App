import 'package:flutter/material.dart';
import 'alphabets1.dart';
import 'main.dart';
import 'numbers1.dart';
import 'phrases.dart';
import 'words.dart';
import 'quizzes.dart';
import 'login_reg_page.dart';

class Lesson {
  final String title;
  final String content;

  Lesson(this.title, this.content);
}

final List<Lesson> lessons = [
  Lesson(
    'Lesson 1: Introduction to Nouns and Articles',
    'Overview:\nIn Spanish, as in many languages, nouns and articles play a crucial role in constructing sentences. Nouns are words that represent people, places, things, or ideas, while articles are words that come before nouns to indicate their definiteness (whether they are specific or nonspecific) and number (whether they are singular or plural).\n\nGender and Number Agreement:\nOne of the fundamental aspects of Spanish nouns and articles is gender and number agreement. In Spanish, nouns are assigned a gender, either masculine or feminine, regardless of whether the object they represent is inherently male or female. Additionally, nouns can be singular or plural, indicating whether they refer to one item or multiple items.\n\nArticles must agree with the nouns they modify in both gender and number. For example:\n\nMasculine singular nouns are accompanied by the definite article "el" and the indefinite article "un," while feminine singular nouns are accompanied by "la" and "una" respectively.\nMasculine plural nouns are accompanied by the definite article "los" and the indefinite article "unos," while feminine plural nouns are accompanied by "las" and "unas" respectively.\n\nDefinite and Indefinite Articles:\n\nDefinite Articles (Articles Definidos):\n"El": Used before masculine singular nouns. Example: "el libro" (the book).\n"La": Used before feminine singular nouns. Example: "la casa" (the house).\n"Los": Used before masculine plural nouns. Example: "los libros" (the books).\n"Las": Used before feminine plural nouns. Example: "las casas" (the houses).\nIndefinite Articles (Articles Indefinidos):\n"Un": Used before masculine singular nouns. Example: "un libro" (a book).\n"Una": Used before feminine singular nouns. Example: "una casa" (a house).\n"Unos": Used before masculine plural nouns. Example: "unos libros" (some books).\n"Unas": Used before feminine plural nouns. Example: "unas casas" (some houses).\nUsage:\n\nDefinite Articles are used when referring to specific nouns that are known or have been previously mentioned.\nIndefinite Articles are used when referring to nonspecific nouns or when introducing something for the first time.\nUnderstanding the agreement between nouns and articles is essential for constructing grammatically correct sentences in Spanish. Practice is key to mastering this concept.',
  ),
  Lesson(
    'Lesson 2: Introduction to Verbs and Conjugation',
    'Basic Verb Forms and Conjugation:\nVerbs are action words that express what the subject of a sentence is doing. In Spanish, verbs change their forms to indicate who is performing the action. These changes are known as conjugations, and they depend on the subject pronoun (yo, tú, él/ella, nosotros/as, vosotros/as, ellos/ellas).\n\nRegular Verbs in Present Tense:\nRegular verbs follow predictable patterns in their conjugation, based on their endings (-ar, -er, -ir). Here\'s a brief overview:\n\n-ar verbs:\n\nExamples: hablar (to speak), bailar (to dance), trabajar (to work).\nConjugation:\nYo hablo (I speak)\nTú hablas (You speak)\nÉl/Ella habla (He/She speaks)\nNosotros/as hablamos (We speak)\nVosotros/as habláis (You all speak)\nEllos/Ellas hablan (They speak)\n-er verbs:\n\nExamples: comer (to eat), beber (to drink), aprender (to learn).\nConjugation:\nYo como (I eat)\nTú comes (You eat)\nÉl/Ella come (He/She eats)\nNosotros/as comemos (We eat)\nVosotros/as coméis (You all eat)\nEllos/Ellas comen (They eat)\n-ir verbs:\n\nExamples: vivir (to live), escribir (to write), abrir (to open).\nConjugation:\nYo vivo (I live)\nTú vives (You live)\nÉl/Ella vive (He/She lives)\nNosotros/as vivimos (We live)\nVosotros/as vivís (You all live)\nEllos/Ellas viven (They live)\nCommon Irregular Verbs (ser, estar, tener):\nSome verbs in Spanish do not follow regular conjugation patterns. Here are three common irregular verbs and their conjugations in the present tense:\n\nSer (to be):\n\nYo soy (I am)\nTú eres (You are)\nÉl/Ella es (He/She is)\nNosotros/as somos (We are)\nVosotros/as sois (You all are)\nEllos/Ellas son (They are)\nEstar (to be):\n\nYo estoy (I am)\nTú estás (You are)\nÉl/Ella está (He/She is)\nNosotros/as estamos (We are)\nVosotros/as estáis (You all are)\nEllos/Ellas están (They are)\nTener (to have):\n\nYo tengo (I have)\nTú tienes (You have)\nÉl/Ella tiene (He/She has)\nNosotros/as tenemos (We have)\nVosotros/as tenéis (You all have)\nEllos/Ellas tienen (They have)\nThese irregular verbs are essential to learn as they are commonly used in everyday conversation and writing. Practice with these verbs will help reinforce their conjugations in your memory.',
  ),
  Lesson(
    'Lesson 3: Introduction to Pronouns',
    'Personal Pronouns:\nPersonal pronouns are used to replace nouns in a sentence, representing the people or things involved. In Spanish, subject pronouns indicate who is performing the action. Here\'s an explanation of the subject pronouns and their usage:\n\nYo - I\nTú - You (singular, informal)\nÉl - He / Ella - She\nNosotros / Nosotras - We (masculine / feminine)\nVosotros / Vosotras - You all (masculine / feminine, informal)\nEllos - They (masculine) / Ellas - They (feminine)\nUsage:\n\nYo is used when referring to oneself as the subject of a sentence.\nTú is used when addressing someone familiar or informally.\nÉl is used to refer to a male person or thing performing the action.\nElla is used to refer to a female person or thing performing the action.\nNosotros / Nosotras are used to refer to a group of people including oneself, with the masculine form for mixed or all-male groups and the feminine form for all-female groups.\nVosotros / Vosotras are used to address a group of people informally, with the masculine form for mixed or all-male groups and the feminine form for all-female groups.\nEllos are used to refer to a group of males or a mixed-gender group, while Ellas are used to refer to a group of females.\nPossessive Adjectives:\nPossessive adjectives are used to indicate ownership or possession. They agree with the gender and number of the noun they modify. Here\'s an introduction to possessive adjectives:\n\nMi - My\nTu - Your (singular, informal)\nSu - His / Her / Your (formal, singular)\nNuestro / Nuestra - Our (masculine / feminine)\nVuestro / Vuestra - Your (plural, informal)\nSu - Their / Your (formal, plural)\nAgreement:\n\nMi and Tu agree in gender and number with the noun they modify. Example: mi libro (my book), tu casa (your house).\nSu can mean his, her, or your (formal, singular), and it remains the same regardless of the gender or number of the noun it modifies. Example: su perro (his/her dog), su casa (your house).\nNuestro / Nuestra and Vuestro / Vuestra agree in gender and number with the noun they modify. Example: nuestra familia (our family), vuestros amigos (your friends).\nSu for their / your (formal, plural) also remains the same regardless of gender or number. Example: su coche (their car), su casa (your house).\nUnderstanding personal pronouns and possessive adjectives is crucial for clear communication in Spanish. Practice using them in sentences to become more familiar with their usage and agreement.',
  ),
  Lesson(
    'Lesson 4: Introduction to Adjectives',
    'Basic Adjective Forms and Agreement with Nouns:\nAdjectives are words used to describe or modify nouns by providing more information about their characteristics or qualities. In Spanish, adjectives must agree with the nouns they describe in gender (masculine/feminine) and number (singular/plural). Here\'s an explanation:\n\nAgreement in Gender and Number:\n\nMasculine Singular: Adjectives ending in -o in their masculine singular form. Example: el perro negro (the black dog).\nFeminine Singular: Adjectives often end in -a to match feminine singular nouns. Example: la casa blanca (the white house).\nMasculine Plural: Adjectives ending in -os for masculine plural nouns. Example: los perros negros (the black dogs).\nFeminine Plural: Adjectives often end in -as for feminine plural nouns. Example: las casas blancas (the white houses).\nCommon Adjectives for Describing People and Objects:\nAdjectives are used extensively in Spanish to describe the characteristics, appearance, and qualities of people and objects. Here are some common adjectives along with their meanings:\n\nBueno/a - Good\nMalo/a - Bad\nGrande - Big / Large\nPequeño/a - Small\nBonito/a - Pretty / Nice\nFeo/a - Ugly\nInteligente - Intelligent\nTonto/a - Silly / Foolish\nFuerte - Strong\nDébil - Weak\nRápido/a - Fast\nLento/a - Slow\nFeliz - Happy\nTriste - Sad\nInteresante - Interesting\nAburrido/a - Boring\nPractice:\n\nTo practice using adjectives, try describing people, places, or objects around you using Spanish adjectives. Pay attention to the agreement between the adjective and the noun it describes, ensuring they match in gender and number. With practice, describing things in Spanish will become more natural and effortless.',
  ),
  Lesson(
    'Lesson 5: Introduction to Prepositions',
    'Basic Prepositions and Usage:\nPrepositions are words that express the relationship between different elements in a sentence, such as time, location, direction, or manner. In Spanish, prepositions are crucial for indicating where something is, where it\'s going, or how something is done. Here are some basic prepositions and their usage:\n\nA - To / At\nExample: Voy a la tienda. (I\'m going to the store.)\nDe - Of / From\nExample: Es el libro de Juan. (It\'s Juan\'s book.)\nEn - In / On / At\nExample: Estoy en casa. (I\'m at home.)\nCon - With\nExample: Voy al cine con mis amigos. (I\'m going to the movies with my friends.)\nPor - For / By\nExample: Gracias por tu ayuda. (Thank you for your help.)\nPara - For / To\nExample: Este regalo es para ti. (This gift is for you.)\nCommon Prepositional Phrases:\nPrepositions are often used in conjunction with other words to form prepositional phrases, which provide more specific information about the relationship between elements in a sentence. Here are some common prepositional phrases in Spanish:\n\nA través de - Through\nAl lado de - Next to\nCerca de - Near\nDetrás de - Behind\nEncima de - On top of\nEn frente de - In front of\nLejos de - Far from\nDentro de - Inside\nFuera de - Outside\nSobre - On / About\nPracticing Prepositions:\nTo become more familiar with prepositions in Spanish, practice using them in sentences that describe locations, directions, and relationships between objects. Pay attention to the context in which each preposition is used and how it affects the meaning of the sentence. With practice, using prepositions correctly will become more intuitive and natural.',
  ),
  Lesson(
    'Lesson 6: Subject-Verb Agreement',
    'Understanding the Order of Subject and Verb in Spanish Sentences:\nIn Spanish, the typical word order in sentences is subject-verb-object (SVO), similar to English. However, it\'s crucial to maintain subject-verb agreement, where the verb matches the subject in person and number. Here\'s an explanation:\n\nSubject-Verb Agreement:\n\nThe subject (who or what the sentence is about) comes before the verb (the action or state of being).\nThe verb conjugates according to the subject\'s person (first, second, third) and number (singular, plural).\nExamples of Simple Sentences in Present Tense:\nHere are some examples of simple sentences in the present tense, demonstrating subject-verb agreement:\n\nYo hablo español. (I speak Spanish.)\nSubject: Yo (I)\nVerb: hablo (speak)\nTú bailas bien. (You dance well.)\nSubject: Tú (You)\nVerb: bailas (dance)\nÉl come frutas. (He eats fruits.)\nSubject: Él (He)\nVerb: come (eats)\nElla estudia en la universidad. (She studies at the university.)\nSubject: Ella (She)\nVerb: estudia (studies)\nNosotros trabajamos juntos. (We work together.)\nSubject: Nosotros (We)\nVerb: trabajamos (work)\nVosotros vivís en España. (You all live in Spain.)\nSubject: Vosotros (You all)\nVerb: vivís (live)\nEllos cantan en el concierto. (They sing at the concert.)\nSubject: Ellos (They)\nVerb: cantan (sing)\nPractice:\nConstruct your own simple sentences in the present tense using subject pronouns and verbs. Ensure that the verb agrees with the subject in person and number.\n\nBy mastering subject-verb agreement and sentence structure, you\'ll be able to communicate effectively in Spanish. Practice regularly to improve your skills and confidence.',
  ),
  Lesson(
    'Lesson 7: Word Order and Basic Sentence Construction',
    'Forming Basic Sentences with Nouns, Verbs, and Adjectives\n\nConstructing basic sentences in Spanish involves arranging nouns, verbs, and adjectives in a coherent order. Let\'s practice forming sentences with these elements in different orders:\n\nGuided Practice:\n\nSubject-Verb-Object (SVO):\n\nExample: Yo (subject) leo (verb) libros (object).\nEnglish: I read books.\nPractice: Tú (subject) compras (verb) comida (object).\nSubject-Adjective-Noun-Verb (SANV):\n\nExample: Juan (subject) es (verb) inteligente (adjective) estudiante (noun).\nEnglish: Juan is an intelligent student.\nPractice: María (subject) es (verb) bonita (adjective) mujer (noun).\nAdjective-Noun-Verb (ANV):\n\nExample: Interesantes (adjective) libros (noun) leemos (verb).\nEnglish: We read interesting books.\nPractice: Buenos (adjective) amigos (noun) tenemos (verb).\nVerb-Subject-Adjective-Noun (VSAN):\n\nExample: Estudian (verb) ellos (subject) juntos (adjective) proyectos (noun).\nEnglish: They study projects together.\nPractice: Bebe (verb) el (subject) agua (noun) fría (adjective).\nNoun-Verb-Adjective (NVA):\n\nExample: Gatos (noun) duermen (verb) tranquilos (adjective).\nEnglish: Cats sleep peacefully.\nPractice: Estudiantes (noun) estudian (verb) mucho (adjective).\nVerb-Adjective-Subject-Noun (VASN):\n\nExample: Trabajan (verb) fuertes (adjective) ellos (subject) obreros (noun).\nEnglish: They work hard as laborers.\nPractice: Comen (verb) sabrosa (adjective) comida (noun) ustedes (subject).\nAdjective-Verb-Noun (AVN):\n\nExample: Rápido (adjective) corre (verb) perro (noun).\nEnglish: The dog runs quickly.\nPractice: Linda (adjective) canta (verb) ella (noun) canción (noun).\nBy practicing these different sentence constructions, you\'ll become more comfortable with arranging nouns, verbs, and adjectives in Spanish sentences. Experiment with creating your own sentences using these structures to reinforce your understanding.',
  ),
];

void main() {
  runApp(Grammar());
}

class Grammar extends StatelessWidget {
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
      home: SpanishGrammarPage(),
    );
  }
}

class SpanishGrammarPage extends StatefulWidget {
  @override
  _SpanishGrammarPageState createState() => _SpanishGrammarPageState();
}

class _SpanishGrammarPageState extends State<SpanishGrammarPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Grammar',
          style: TextStyle(fontSize: 21, color: Colors.white),
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
              child: ListView.builder(
                itemCount: lessons.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonPage(lesson: lessons[index]),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          lessons[index].title,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton( 
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GrammarQuiz()));
              },
              child: Text("Take Spanish Grammar Quiz"),
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


class LessonPage extends StatelessWidget {
  final Lesson lesson;

  LessonPage({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speech Craft: Spanish Grammar',
          style: TextStyle(fontSize: 21, color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 43, 36, 58),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lesson.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              lesson.content,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}


