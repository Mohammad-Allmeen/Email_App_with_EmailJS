
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RoundedButton extends StatelessWidget {
  //global variable
  final String title;
  final bool? loading;
  final VoidCallback onTap;

  // constructor of the class
  const RoundedButton({super.key,
  required this.title,
    required this.onTap,
    this.loading=false
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.lightGreen,
              blurRadius: 0.5,
              offset: Offset(0.0,2.0)
            )
          ]
        ),
        child: Center(
          child: Text(
            title, style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.aBeeZeeTextTheme().bodyLarge?.fontFamily,
          ),
          ),
        ),
      ),
    );
  }
}
