import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/controller/common_controller.dart';
import 'package:test_app/views/components/app_button.dart';

class AdditionScreen extends StatelessWidget {
  AdditionScreen({super.key});

  final firstNosController = TextEditingController();
  final secondNosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final commonController = Provider.of<CommonController>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: firstNosController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "First Number",
                ),
              ),
              TextField(
                controller: secondNosController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Second Number",
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              AppButton(
                title: "Add",
                onTap: () {
                  context.read<CommonController>().additionOf2Nos(
                        number1: double.parse(firstNosController.text),
                        number2: double.parse(secondNosController.text),
                      );
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "Result : ${commonController.additionResult}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Addition of 2 Nos",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
