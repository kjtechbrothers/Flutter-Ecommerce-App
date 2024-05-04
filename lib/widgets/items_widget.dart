import 'package:flutter/material.dart';
import 'package:kj_brandings/pages/item_page.dart';
class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 0.68,
      // it disable the scroll functionality of gridview then it will scroll in list view of home page
        physics  : const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<8; i++)
        Container(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 8),
          margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text('-50%',style: TextStyle(
                        fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  const Icon(Icons.favorite_border,color: Colors.red,)
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemPage()));
                } ,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset('assets/$i.png',height: 100,width: 100,),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: const Text('Product Title',style: TextStyle(
                  fontSize: 18,color: Color(0xFF4C53A5),fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('Write description',style: TextStyle(
                  fontSize: 15,color: Color(0xFF4C53A5),),),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$55',style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)
                  ),),
                  Icon(Icons.shopping_cart_checkout,color: Color(0xFF4C53A5),),
                ],
              ),
              ),
            ],
          ),
        ),
      ],

    );
  }
}
