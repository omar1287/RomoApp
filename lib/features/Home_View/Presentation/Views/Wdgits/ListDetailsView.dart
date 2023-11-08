import 'package:bookly_app/core/Utiles/Assets.dart';
import 'package:bookly_app/core/Widget/Widget_Error.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresState.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/Custom_ListView_Items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ListDetailsView extends StatelessWidget{
  const ListDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBestSallerBooksCategoresCubit,FetchBestSallerBooksCategoresState>(
      builder: (context, state) {
        if (state is SuccFetchBestSallerBooksCategoresState) {
          return  Expanded(
            child: ListView.separated(

                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){

                  return  SizedBox(
                      height: 150,
                      child: CustomItems(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,bookModel: state.books[index],));
                }, separatorBuilder: (context,index){
              return const SizedBox(
                width: 10,
              );
            }, itemCount: state.books.length),
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

