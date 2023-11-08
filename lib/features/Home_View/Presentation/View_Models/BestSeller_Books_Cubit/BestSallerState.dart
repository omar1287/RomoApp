import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';

abstract class BestSallerSate {}

class InitailBestSellerState extends BestSallerSate {}

class LoadingBestSellerState extends BestSallerSate {}

class ErrorBestSellerState extends BestSallerSate {
  final String errorMessage;

  ErrorBestSellerState(this.errorMessage);
}

class SuccBestSellerState extends BestSallerSate {
  List<BookModel> books;

  SuccBestSellerState(this.books);
}
