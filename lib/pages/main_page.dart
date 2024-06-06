import 'package:flutter/material.dart';
import 'package:tatu_project/utils/constants.dart';

import '../widgets/menu_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 256.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/main_bg.webp"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Text(
                  Constants.subject_name,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: const[
                  MenuButton(Constants.edu_program, Constants.test_file),
                  MenuButton(Constants.lectures, Constants.lectures),
                  MenuButton(Constants.practices, Constants.practices),
                  MenuButton(Constants.tests, Constants.test_file),
                  MenuButton(Constants.literatures, Constants.literature_file),
                  MenuButton(Constants.resources, Constants.test_file),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
