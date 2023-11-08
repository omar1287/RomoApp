import 'package:bookly_app/core/Utiles/App_Go_Router.dart';
import 'package:bookly_app/core/Widget/Widget_Error.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/BestSeller_Books_Cubit/BestSallerState.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/BestSeller_Books_Cubit/BestSellerCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/CustomList_View_Text.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/customItems1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSeller extends StatelessWidget {




const CustomSeller( {super.key});

@override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSallerCubit, BestSallerSate>(
        builder: (context, state) {
      if (state is SuccBestSellerState) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 12),
              child: SizedBox(
                height: 130,
                child: Row(
                  children: [
                    CustomItems1(
                      imageUrl: state.books[index].volumeInfo.imageLinks
                          ?.thumbnail ??
                          '',bookModel: state.books[index],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomTextAndRate(
                      nameBook: state.books[index].volumeInfo.title,
                      nameWritter: state.books[index].volumeInfo.authors![0],
                      bookModel: state.books[index],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: state.books.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 5,
            );
          },
        );
      } else if (state is ErrorBestSellerState) {
        return WidgetError(eMessage: state.errorMessage);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
