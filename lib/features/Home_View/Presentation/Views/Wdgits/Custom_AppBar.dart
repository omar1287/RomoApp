import 'package:bookly_app/core/Utiles/App_Go_Router.dart';
import 'package:bookly_app/core/Utiles/Assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 45),
      child: Row(
        children: [
          const Image(
            image: AssetImage(AssetsData.logo),
            height: 40,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearch);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ))
        ],
      ),
    );
  }
}
