import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomNoteBottom extends StatelessWidget {
  const CustomNoteBottom({
    super.key,
    required this.onTap,
    this.isLoading = false,
  });

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: isLoading
            ? Center(child: SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ))
            : Center(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
      ),
    );
  }
}
