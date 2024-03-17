import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(LoginReg());
}

class LoginReg extends StatelessWidget {
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
        title: Text('Speech Craft', style: TextStyle(color: Colors.white)), 
        backgroundColor: Color.fromARGB(255, 43, 36, 58), 
      ),
      backgroundColor: Color.fromARGB(255, 43, 36, 58),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildLogo(),
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
      child: Image.asset(
        'assets/logo.jpg',
        width: 275,
        height: 275,
      ),
    );
  }



  Widget _buildEmailTextField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        icon: Icon(Icons.email, color: Colors.white),
        labelStyle: TextStyle(color: Colors.white), 
      ),
      style: TextStyle(color: Colors.white), 
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
        icon: Icon(Icons.lock, color: Colors.white), 
        labelStyle: TextStyle(color: Colors.white), 
      ),
      style: TextStyle(color: Colors.white),
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
        icon: Icon(Icons.lock, color: Colors.white),
        labelStyle: TextStyle(color: Colors.white), 
        errorText: _confirmPasswordController.text != _passwordController.text
            ? 'Passwords do not match'
            : null,
      ),
      style: TextStyle(color: Colors.white),
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
      _showMessage("User with email $email already exists.");
      return;
    }

    final insertionIndex = insertionPoint(emails, email);
    emails.insert(insertionIndex, email);
    passwords.insert(insertionIndex, password);

    _showMessage("Registration successful.");
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  void _login(String email, String password) {
    final index = binarySearch(emails, email);
    if (index == -1) {
      _showMessage("User with email $email does not exist.");
      return;
    }

    if (passwords[index] == password) {
      _showMessage("Login successful.");
      Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
    } else {
      _showMessage("Incorrect password.");
    }
  }

  Widget _buildLoginSignupButtons() {
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: Text(_isLoginForm ? 'Login' : 'Signup', style: TextStyle(color: Color.fromARGB(255, 43, 36, 58))),
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              final email = _emailController.text;
              final password = _passwordController.text;
              _isLoginForm ? _login(email, password) : _register(email, password);
            }
          },
        ),
        TextButton(
          child: Text(_isLoginForm ? 'Create an account' : 'Have an account? Sign in', style: TextStyle(color: Colors.white)), 
          onPressed: () {
            setState(() {
              _isLoginForm = !_isLoginForm;
            });
          },
        ),
      ],
    );
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2), 
      ),
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

