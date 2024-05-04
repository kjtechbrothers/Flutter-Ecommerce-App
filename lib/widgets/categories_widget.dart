import 'package:flutter/material.dart';
class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for(int i=1;i<8;i++)
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // use i variable to change picture in loop
              Image.asset("assets/$i.png",width: 50,height: 50,),
              const Text("Sale 50% Off",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xFF4C53A5)),)
            ],
          ),
        ),
      ],),
    );
  }
}
