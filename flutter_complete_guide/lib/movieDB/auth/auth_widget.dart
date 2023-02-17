import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/movieDB/auth/main_screen_widget.dart';
import 'package:flutter_complete_guide/movieDB/theme/button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to your account'),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 15,
      color: Colors.black,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          _FormWidget(),
          SizedBox(height: 25),
          Text(
            'In order to is a subordinating conjunction. We use in order to with an infinitive form of a verb to express the purpose of something. It introduces a subordinate clause. It is more common in writing than in speaking:',
            style: textStyle,
          ),
          SizedBox(height: 25),
          ElevatedButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: Text('Register')),
          SizedBox(height: 25),
          Text(
            'When you signed up for an online casino, you downloaded a software client and played the games through that client.',
            style: textStyle,
          ),
          SizedBox(height: 25),
          ElevatedButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: Text('Verify email')),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  // button controllers
  final _loginTextController = TextEditingController(text: 'admin');
  final _paswordTextController = TextEditingController(text: 'admin');
  String? errorMessage = null;

  // button handlers
  void _auth() {
    final _login = _loginTextController.text;
    final _password = _paswordTextController.text;
    if (_login == 'admin' && _password == 'admin') {
      errorMessage = null;
      final navigator = Navigator.of(context);
      // final route =
      // MaterialPageRoute<void>(builder: (context) => MainScreenWidget());
      navigator.pushNamed('/main_screen');
      // navigator.pushReplacementNamed('/main_screen');
    } else {
      errorMessage = 'Wrong!';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('_resetPassword');
  }

  @override
  Widget build(BuildContext context) {
    const tfColor = Color(0xFF01B4E4);
    final textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black54,
    );

    final decorator = InputDecoration(
      border: OutlineInputBorder(borderSide: BorderSide()),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorMessage != null)
          Text(
            errorMessage ?? '',
            style: TextStyle(color: Colors.red),
          ),
        Text(
          'Username',
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          decoration: decorator,
        ),
        SizedBox(height: 5),
        Text(
          'Password',
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextField(
          controller: _paswordTextController,
          decoration: decorator,
          obscureText: true,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: AppButtonStyle.linkButton,
              child: Text(
                'login',
              ),
            ),
            SizedBox(width: 10),
            TextButton(
              onPressed: _resetPassword,
              child: Text(
                'Reset password',
                style: TextStyle(color: tfColor),
              ),
            ),
          ],
        )
      ],
    );
  }
}
