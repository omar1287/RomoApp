import 'package:bookly_app/core/Utiles/App_Go_Router.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class CustomItems extends StatelessWidget {
  final String imageUrl;
  BookModel bookModel;

  CustomItems({super.key, required this.imageUrl, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetails,extra: bookModel);
      },
      child: AspectRatio(
        aspectRatio: 2.4 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
