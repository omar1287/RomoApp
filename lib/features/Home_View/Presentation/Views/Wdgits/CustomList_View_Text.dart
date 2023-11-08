import 'package:bookly_app/core/Utiles/App_Go_Router.dart';
import 'package:bookly_app/core/Utiles/Font.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextAndRate extends StatelessWidget {
  final dynamic nameBook;

  final dynamic nameWritter;

BookModel bookModel;
   CustomTextAndRate(
      {super.key,
      required this.nameBook,

      required this.nameWritter,required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetails,extra: bookModel);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
             nameBook,
              style: TextFont.textStyle20,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
             nameWritter,
              style: TextFont.textStyle18.copyWith(color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'free',
                  style: TextFont.textStyle20WithoutFontFamily,
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '0',
                      style: TextFont.textStyle18.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(0)',
                      style: TextFont.textStyle18.copyWith(color: Colors.grey),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
