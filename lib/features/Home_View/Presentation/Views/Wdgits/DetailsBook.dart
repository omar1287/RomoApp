import 'package:bookly_app/core/Utiles/Font.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsBook extends StatelessWidget{
   DetailsBook({super.key,required this.bookModel});
BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Text(bookModel.volumeInfo.title??'Name is empty',style: TextFont.textStyle23.copyWith(
           fontSize: 20
         ),maxLines: 1,overflow: TextOverflow.ellipsis,),
        const SizedBox(
          height: 7,
        ),
         Opacity(
            opacity: 0.5,
            child: Text(bookModel.volumeInfo.authors![0]??'',style: TextFont.textStyle18,)),
        const SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 20,),
            const SizedBox(
              width: 10,
            ),
            Text('0',style: TextFont.textStyle16.copyWith(
                color: Colors.white
            ),),
            const SizedBox(
              width: 5,
            ),
            Text('(0)',style: TextFont.textStyle16.copyWith(
                color: Colors.grey
            ),),


          ],
        )
      ],
    );
  }

}