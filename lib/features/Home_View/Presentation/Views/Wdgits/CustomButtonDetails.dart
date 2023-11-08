import 'package:bookly_app/core/LunchMethod/LunchMethod.dart';
import 'package:bookly_app/core/Utiles/Font.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButtonDetails extends StatelessWidget {
  CustomButtonDetails({super.key, required this.bookModel});

  BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)))),
              child: Text(
                'free',
                style: TextFont.textStyle18.copyWith(color: Colors.black),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextButton(
              onPressed: () async {
               lunchLinkURL(context, bookModel.volumeInfo.previewLink);
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)))),
              child: Text(
                'Free Preview',
                style: TextFont.textStyle18.copyWith(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
