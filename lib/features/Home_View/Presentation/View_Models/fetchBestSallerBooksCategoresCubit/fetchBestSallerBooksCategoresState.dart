import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';

abstract class FetchBestSallerBooksCategoresState {}

class InitailFetchBestSallerBooksCategoresState
    extends FetchBestSallerBooksCategoresState {}

class LoadingFetchBestSallerBooksCategoresState
    extends FetchBestSallerBooksCategoresState {}

class ErrorFetchBestSallerBooksCategoresState
    extends FetchBestSallerBooksCategoresState {
  final String errorMessage;

  ErrorFetchBestSallerBooksCategoresState(this.errorMessage);
}

class SuccFetchBestSallerBooksCategoresState
    extends FetchBestSallerBooksCategoresState {
  List<BookModel> books;

  SuccFetchBestSallerBooksCategoresState(this.books);
}
