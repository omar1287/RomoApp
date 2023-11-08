import 'package:bookly_app/core/Utiles/Service_Locator.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:bookly_app/features/Home_View/Data/Repos/HomeRepoImpli.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/HomeDetailsView.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Home_Screen.dart';
import 'package:bookly_app/features/Search/Presenation/Views/SearchScreen.dart';
import 'package:bookly_app/features/Splash/Presentation/View/splashView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHome = '/homeView';
  static const kDetails = '/DetailsView';
  static const kSearch = '/SearchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
          path: kHome,
          builder: (BuildContext context, GoRouterState state) {
            return const Home();
          }),
      GoRoute(
          path: kDetails,
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider(create: (context)=>FetchBestSallerBooksCategoresCubit(getIt.get<homeRepoImpl>()),
            child:   DetailsView(state.extra as BookModel),
            );
          }),
      GoRoute(
          path: kSearch,
          builder: (BuildContext context, GoRouterState state) {
            return const SearchScreen();
          })
    ],
  );
}
