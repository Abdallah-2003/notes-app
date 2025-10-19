import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomNoteBottom extends StatelessWidget {
  const CustomNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor 
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}