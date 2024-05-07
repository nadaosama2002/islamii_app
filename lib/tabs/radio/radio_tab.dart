import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png')
        ,
        const SizedBox(height: 20,),
      const  Text('اذاعه القران الكريم ',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,),
          ),
        const SizedBox(height: 25,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
IconButton(
  onPressed: (){},
   icon: Icon(Icons.skip_previous_rounded,
   size: 40,
   color: AppTheme.primaryLight,),
   ),
   IconButton(
  onPressed: (){},
   icon: Icon(Icons.pause,size: 40,color: AppTheme.primaryLight,) ),
   IconButton(
  onPressed: (){},
   icon: Icon(Icons.skip_next_rounded,size: 40,color: AppTheme.primaryLight,) )
],),
      ],
    );
  }
}
