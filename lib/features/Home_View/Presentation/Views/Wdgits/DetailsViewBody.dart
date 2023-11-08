import 'package:bookly_app/core/Utiles/Assets.dart';
import 'package:bookly_app/core/Widget/Widget_Error.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresState.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/CustomButtonDetails.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/Custom_ListView_Items.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/DetailsBook.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/ListDetailsView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

class DetailsViewBody extends StatelessWidget {
   DetailsViewBody({super.key,required this.bookModel});
BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBestSallerBooksCategoresCubit,FetchBestSallerBooksCategoresState>(
      builder: (context, state) {
        if (state is SuccFetchBestSallerBooksCategoresState) {

          return CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                GoRouter.of(context).pop();
                              },
                              icon: const Icon(Icons.clear)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart_outlined))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.22),
                        child:   CustomItems(
                          imageUrl:bookModel.volumeInfo.imageLinks?.thumbnail??'' ,bookModel: bookModel,

                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                       DetailsBook(bookModel: bookModel,),
                      const SizedBox(
                        height: 20,
                      ),
                       CustomButtonDetails(bookModel: bookModel,),
                      const SizedBox(
                        height: 30,
                      ),
                      const ListDetailsView()
                    ],
                  ),
                ),
              )
            ],
          );
        } else if (state is ErrorFetchBestSallerBooksCategoresState) {
          return WidgetError(
            eMessage: state.errorMessage,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
