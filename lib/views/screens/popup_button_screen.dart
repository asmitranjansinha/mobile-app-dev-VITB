import 'package:flutter/material.dart';

class PopupButtonScreen extends StatelessWidget {
  const PopupButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PopupMenuButton(
                child: Container(
                  color: Colors.purple,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 50.0,
                    ),
                    child: Text(
                      'Click Me',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text('Item 3'),
                  ),
                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            "Popup Button",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
        ));
  }
}
