import 'package:bookly_app/core/Utiles/App_Go_Router.dart';
import 'package:bookly_app/core/Utiles/Assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animatedMethod();
    navigateToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                  position: slidingAnimation,
                  child: const Column(
                    children: [
                      Image(image: AssetImage(AssetsData.logo)),
                      Padding(
                        padding: EdgeInsets.only(right: 10, top: 10),
                        child: Text(
                          'Read Free Books',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ));
            }),
      ],
    );
  }

  void animatedMethod() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      // Get.to(() => const Home(),
      //     transition: Transition.fade,
      //     duration: const Duration(microseconds: 250));
      GoRouter.of(context).pushReplacement(AppRouter.kHome);
    });
  }
}
