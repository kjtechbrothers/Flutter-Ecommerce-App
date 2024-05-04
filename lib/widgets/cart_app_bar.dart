import 'package:flutter/material.dart';
import 'package:kj_brandings/pages/home_page.dart';
class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
              } ,
              child: const Icon(Icons.arrow_back,size: 30,color: Color(0xFF4C53A5),)),
          const Padding(
              padding: EdgeInsets.only(left: 20),
            child: Text('Cart',style: TextStyle(
              fontSize: 23,color: Color(0xFF4C53A5),fontWeight: FontWeight.bold,
            ),),
          ),
          const Spacer(),
          const Icon(Icons.more_vert,size: 30,color: Color(0xFF4C53A5),),
        ],
      ),
    );
  }
}
