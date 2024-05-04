import 'package:flutter/material.dart';
class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 200,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        color: Colors.white,
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:',style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5),
                ),),
                Text('\$165',style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5),
                ),),

              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF4C53A5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('Check Out',style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
