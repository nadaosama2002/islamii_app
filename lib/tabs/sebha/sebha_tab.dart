import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/app_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double angle =0;
  int counter =0;
  int crruntText=0;
  List<String> azkar=[
    'سبحان الله',
    'الحمدلله',
    'الله أكبر',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of (context).size;
    return SizedBox(
      width:size.width,
      height: size.height,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 50),
             child:  Image.asset('assets/images/head_sebha_logo.png'),),
              Container(
                margin: const EdgeInsets.only(top: 80),
                height: 200,
                child: GestureDetector(
                  onTap: () {
                    onClick();
                  },
                  child: Transform.rotate(angle: angle,
                    child:
                     Image.asset('assets/images/body_sebha_logo.png',),),
                ),
              )
            ],
          ),
          const SizedBox(height: 30,),
        const Text('عدد التسبيحات ',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,),),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: AppTheme.primaryLight,
              borderRadius: BorderRadius.circular(15),
            ),
            child:  Text(
              '$counter',
              style: TextStyle(
                fontSize: 24),),
          ),
          SizedBox(height: 20,),
           GestureDetector(
            onTap: (){
              onClick();
            },
             child: Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
              decoration: BoxDecoration(
                color: AppTheme.primaryLight,
                borderRadius: BorderRadius.circular(35),
              ),
              child:  Text(azkar[crruntText],style: TextStyle(fontSize: 30),),
                       ),
           )
        ],
      ),
    );
  }

  onClick(){
angle+=5;
if (counter==33){
crruntText++;
}
crruntText =crruntText%3;
counter=counter>=33?0:++counter;


setState(() {
  
});
  }
}
