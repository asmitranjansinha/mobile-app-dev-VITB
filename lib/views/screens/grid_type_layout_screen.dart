import 'package:flutter/material.dart';
import 'package:test_app/views/components/blue_box.dart';

class GridTypeLayoutScreen extends StatelessWidget {
  const GridTypeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  BlueBox(
                    title: "Row1",
                    width: 120.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BlueBox(
                        title: "Row2\nCol1",
                        width: 20.0,
                      ),
                      BlueBox(
                        title: "Row2\nCol2",
                        width: 55.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BlueBox(
                        title: "Row3\nCol1",
                        width: 10.0,
                      ),
                      BlueBox(
                        title: "Row3\nCol2",
                        width: 10.0,
                      ),
                      BlueBox(
                        title: "Row3\nCol2",
                        width: 10.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  BlueBox(
                    title: "Row4",
                    width: 120.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Grid Type Layout",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
