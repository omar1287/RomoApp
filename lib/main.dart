// ignore_for_file: depend_on_referenced_packages

import 'package:bookly_app/core/Utiles/App_Go_Router.dart';
import 'package:bookly_app/core/Utiles/Service_Locator.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:bookly_app/features/Home_View/Data/Repos/HomeRepoImpli.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/BestSeller_Books_Cubit/BestSellerCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/Feature_Books_Cubit/FeatureCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresCubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeatureBooksCubit(getIt.get<homeRepoImpl>())..featureBook()),
        BlocProvider(
            create: (context) => BestSallerCubit(getIt.get<homeRepoImpl>())..bestSallerBook()),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            // scaffoldBackgroundColor: kPrimaryColor
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
