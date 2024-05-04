import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 90,
      color: Colors.white,
      child: Container(

        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
            ),
          ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const Text('\$120',style: TextStyle(
                color: Color(0xFF4C53A5),fontSize: 25,fontWeight: FontWeight.bold),),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.cart_badge_plus,color: Colors.white,),
                label: const Text('Add to cart',style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),
                ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFF4C53A5)),
                padding: MaterialStateProperty.all(
                 const EdgeInsets.symmetric(vertical: 13,horizontal: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
