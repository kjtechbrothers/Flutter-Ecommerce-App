
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kj_brandings/widgets/categories_widget.dart';
import 'package:kj_brandings/widgets/home_appbar.dart';

import '../widgets/items_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
              topRight: Radius.circular(35),)
            ),
            child: Column(
              children: [
                //Search Widget
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                  child: Row(children: [
                    Container(margin: const EdgeInsets.only(left: 5),
                      height: 50, width: 265,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.camera_alt,size: 27,color: Color(0xFF4C53A5),)
                  ],),
                ),
                //Categories
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: const Text('Categories', style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                ),
                //CategoriesWidget
                const CategoriesWidget(),
                //Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: const Text('Best Selling', style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5)),),
                ),
                //Items Widget
                const ItemsWidget(),
                const SizedBox(height: 15,)
              ],
            ),
          ),
        ],
      ),
     bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){} ,
        height: 70,
        color: const Color(0xFF4C53A5),
        items: const  [
          Icon(Icons.home,size: 30,color: Colors.white,),
          Icon(CupertinoIcons.cart_fill,size: 30,color: Colors.white,),
          Icon(Icons.list,size: 30,color: Colors.white,),

        ],
      ),
    );
  }
}
