import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color color;
  final Color borderColor;
  final VoidCallback onTap;
  const NextButtonWidget({
    Key? key, 
    required this.label,
    required this.backgroundColor, 
    required this.color, 
    required this.borderColor, 
    required this.onTap}) : super(key: key);
  NextButtonWidget.green({required String label, required VoidCallback onTap})
      : this.label = label,
        this.backgroundColor = AppColors.darkGreen,
        this.color = AppColors.white,
        this.borderColor = AppColors.green,
        this.onTap = onTap;
  NextButtonWidget.purple({required String label, required VoidCallback onTap})
      : this.label = label,
        this.backgroundColor = AppColors.purple,
        this.color = AppColors.white,
        this.borderColor = AppColors.purple,
        this.onTap = onTap;        
  NextButtonWidget.grey({required String label, required VoidCallback onTap})
      : this.label = label,
        this.backgroundColor = AppColors.white,
        this.color = AppColors.grey,
        this.borderColor = AppColors.border,
        this.onTap = onTap;      

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(        
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )),
          side: MaterialStateProperty.all(BorderSide(color: borderColor)) 
        ),
        onPressed: () => { onTap()},
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: color
          ),
        ),
      ),
    );
  }
}