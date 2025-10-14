import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 222, 164, 88),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'assets/fonts/Poppins/Poppins/Poppins-Regular.ttf'
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Text(
                  'Build your career with \n tharwat samy',
                  style: TextStyle(
                    color: Colors.black.withAlpha(90),
                    fontSize: 16
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon:  Icon(Icons.delete),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                'May 21,2022',
                style: TextStyle(
                  color: Colors.black.withAlpha(90),
                  fontSize: 16
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}