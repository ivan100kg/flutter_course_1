import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
      ),
      body: ElevatedButton(
        child: Text('back'),
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            return Navigator.of(context).pop();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'her',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'hui',
          ),
        ],
      ),
    );
  }
}
