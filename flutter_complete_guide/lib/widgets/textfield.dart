import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabled: true,
                errorText: null,
                icon: Icon(Icons.access_time),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                labelText: 'Hello',
                labelStyle: TextStyle(
                  color: Colors.deepOrange,
                ),
                helperText: 'Fuck you',
                helperStyle: TextStyle(),
                helperMaxLines: 1,
                hintText: 'huohuohuou',
                hintStyle: TextStyle(
                  color: Colors.black12,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Icon(Icons.money),
                prefix: Text('pre: '),
                isCollapsed: true,
                contentPadding: EdgeInsets.all(30),
                filled: true,
                fillColor: Colors.amber,
                focusColor: Colors.black26,
                hoverColor: Colors.black,
              ),
              enableSuggestions: true,
              textCapitalization: TextCapitalization.characters,
              style: TextStyle(
                fontSize: 30,
              ),
              maxLines: 2,
              minLines: 2,
              maxLength: 100,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              obscureText: true,
              obscuringCharacter: '#',
              autocorrect: false,
              enableSuggestions: false,
            ),
          ),
        ),
      ],
    );
  }
}
