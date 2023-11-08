

import 'package:flutter/material.dart';

class CustomSellerSearch extends StatelessWidget {
  const CustomSellerSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemBuilder: (context,index){

        return   const Padding(
            padding: EdgeInsets.only(left: 12,bottom: 12),
            child: SizedBox(
              height: 130,
              child: Row(
                children: [
                  //CustomItems(imageUrl: AssetsData.testImage,),
                  SizedBox(
                    width: 20,
                  ),
                 // CustomTextAndRate(nameWritter: 'dfef',nameBook: 'ddff',)
                ],
              ),
            ),
          )
        ;
      },itemCount: 5,);

  }
}
