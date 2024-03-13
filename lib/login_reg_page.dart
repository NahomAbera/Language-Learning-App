import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech Craft',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  bool _isLoginForm = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  List<String> emails = [];
  List<String> passwords = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech Craft'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildLogo(),
              _buildWelcomeMessage(),
              _buildEmailTextField(),
              _buildPasswordTextField(),
              _isLoginForm ? Container() : _buildConfirmPasswordTextField(),
              _buildLoginSignupButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: FlutterLogo(size: 150),
    );
  }

  Widget _buildWelcomeMessage() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        'Welcome to your Spanish Learning App',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        icon: Icon(Icons.email),
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter your email';
        }
        return null;
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        icon: Icon(Icons.lock),
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter your password';
        }
        return null;
      },
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      controller: _confirmPasswordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        icon: Icon(Icons.lock),
        errorText: _confirmPasswordController.text != _passwordController.text
            ? 'Passwords do not match'
            : null,
      ),
      validator: (value) {
        if (value != _passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
    );
  }

  void _register(String email, String password) {
    final existingIndex = binarySearch(emails, email);
    if (existingIndex != -1) {
      print("User with email $email already exists.");
      return;
    }

    final insertionIndex = insertionPoint(emails, email);
    emails.insert(insertionIndex, email);
    passwords.insert(insertionIndex, password);

    print("User registered successfully with email $email.");
  }

  void _login(String email, String password) {
    final index = binarySearch(emails, email);
    if (index == -1) {
      print("User with email $email does not exist.");
      return;
    }

    if (passwords[index] == password) {
      print("Login successful!");
    } else {
      print("Incorrect password.");
    }
  }

  Widget _buildLoginSignupButtons() {
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: Text(_isLoginForm ? 'Login' : 'Signup'),
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              final email = _emailController.text;
              final password = _passwordController.text;
              _isLoginForm ? _login(email, password) : _register(email, password);
            }
          },
        ),
        TextButton(
          child: Text(_isLoginForm ? 'Create an account' : 'Have an account? Sign in'),
          onPressed: () {
            setState(() {
              _isLoginForm = !_isLoginForm;
            });
          },
        ),
      ],
    );
  }

  int binarySearch(List<String> list, String key) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      int cmp = key.compareTo(list[mid]);

      if (cmp == 0) {
        return mid;
      } else if (cmp < 0) {
        high = mid - 1;
      } else {
        low = mid + 1;
      }
    }

    return -1;
  }

  int insertionPoint(List<String> list, String key) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      int cmp = key.compareTo(list[mid]);

      if (cmp == 0) {
        return mid;
      } else if (cmp < 0) {
        high = mid - 1;
      } else {
        low = mid + 1;
      }
    }

    return low; 
  }
}
