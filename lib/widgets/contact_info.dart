import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactInfo({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}