import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/item_bottom_nav_bar.dart';
import '../widgets/items_app_bar.dart';
class ItemPage extends StatelessWidget {
  List<Color> clrs=[
    Colors.red,
    Colors.lightBlueAccent,
    Colors.yellowAccent,
    Colors.indigo,
    Colors.black,
  ];
  ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const ItemAppBar(),
         Column(
           children: [
             ClipPath(
               clipper: OvalBottomBorderClipper(),
               child: Container(
                 width: double.infinity,color:const Color(0xFFEDECF2) ,
                 child: Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                   children: [
                     Padding(padding:const EdgeInsets.all(16),
                     child:Image.asset('assets/1.png',height: 300),
                     ),
                   ],
                 ),),
               ),
             ),
             const Padding(padding: EdgeInsets.only(bottom: 20,top: 20,left: 6),
               child: Row(
                 children: [
                   Text('Product Title',style: TextStyle(
                       fontSize: 28,color: Color(0xFF4C53A5),fontWeight: FontWeight.bold),)
                 ],
               ),
             ),
             Padding(padding: const EdgeInsets.only(top: 5,bottom: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 RatingBar.builder(
                   initialRating: 4,
                     minRating: 1,
                     direction: Axis.horizontal,
                     itemCount: 5,
                     itemSize: 20,
                     itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                     itemBuilder: (context,_)=> const Icon(Icons.favorite,color: Color(0xFF4C53A5),),
                     onRatingUpdate: (index){},
                 ),
                 Row(
                   children: [
                     Container(
                       padding: const EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                               spreadRadius:3,
                             blurRadius: 10,
                           )
                         ]
                       ),
                       child: const Icon(CupertinoIcons.minus,size: 18,),
                     ),
                     Container(
                       margin: const EdgeInsets.symmetric(horizontal: 10),
                       child: const Text('01',style: TextStyle(
                         fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF4C53a5),
                       ),),
                     ),
                     Container(
                       margin: const EdgeInsets.symmetric(horizontal: 10),
                       padding: const EdgeInsets.all(5),
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.5),
                               spreadRadius:3,
                               blurRadius: 10,
                             )
                           ]
                       ),
                       child: const Icon(CupertinoIcons.plus,size: 18,),
                     ),
                   ],
                 ),
               ],
             ),),
             const Padding(padding: EdgeInsets.only(left: 10,right: 10),
               child: Text('There is the more detailed description of the product.',textAlign: TextAlign.justify,
                 style: TextStyle(fontSize: 18,color: Color(0xFF4C53A5),
               ),),
             ),
             Padding(padding:const  EdgeInsets.symmetric(vertical: 8,horizontal: 8),
             child: Row(
               children: [
                 const Text('Size:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                 const SizedBox(width: 10),
                 Row(
                   children: [
                     for(int i=5;i<10;i++)
                   Container(
                     height: 30,width: 30,
                     alignment: Alignment.center,
                     margin: const EdgeInsets.symmetric(horizontal: 5),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 2,
                           blurRadius: 8,
                         ),
                       ]
                     ),
                     child: Text(i.toString(),style: const TextStyle(
                         color: Color(0xFF4C53A5),fontWeight: FontWeight.bold,fontSize: 18),),
                   )
                 ],),

               ],
             ),),
             Padding(padding:const  EdgeInsets.symmetric(vertical: 8,horizontal: 8),
               child: Row(
                 children: [
                   const Text('Color:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                   const SizedBox(width: 10),
                   Row(
                     children: [
                       for(int i=0;i<5;i++)
                         Container(
                           height: 30,width: 30,
                           alignment: Alignment.center,
                           margin: const EdgeInsets.symmetric(horizontal: 5),
                           decoration: BoxDecoration(
                               color: clrs[i],
                               borderRadius: BorderRadius.circular(30),
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey.withOpacity(0.5),
                                   spreadRadius: 2,
                                   blurRadius: 8,
                                 ),
                               ]
                           ),

                         )
                     ],),

                 ],
               ),),

           ],
         ),
        ],

      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}