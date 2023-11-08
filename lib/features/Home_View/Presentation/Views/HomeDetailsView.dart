import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresCubit.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/DetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatefulWidget {

BookModel bookModel;

DetailsView(this.bookModel, {super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FetchBestSallerBooksCategoresCubit>(context).fetchBestSallerBooksCategores(categores: widget.bookModel.volumeInfo.categories![0]);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: DetailsViewBody(bookModel: widget.bookModel,)),
    );
  }
}
