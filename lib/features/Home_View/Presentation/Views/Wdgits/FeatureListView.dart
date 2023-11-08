import 'package:bookly_app/core/Widget/CustomProgress.dart';
import 'package:bookly_app/core/Widget/Widget_Error.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/Feature_Books_Cubit/FeatureCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/Feature_Books_Cubit/FeatureState.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/Custom_ListView_Items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state) {
       if(state is SuccFeatureState){
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  CustomItems(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,bookModel: state.books[index],);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemCount: state.books.length),
        );
      }else if(state is ErrorFeatureState){
        return WidgetError(eMessage: state.errorMessage);
       }else{
         return const CaustomProgrees();
       }
    });
  }
}
