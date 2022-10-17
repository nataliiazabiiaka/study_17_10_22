import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final iconImagePath;
  final String buttonText;

  const MyButton({
    Key? key,
    this.iconImagePath,
    required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
           // color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          buttonText,
          style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
