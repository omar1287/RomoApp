import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';

abstract class FeatureBooksState {}

class InitailFeatureState extends FeatureBooksState {}

class LoadingFeatureState extends FeatureBooksState {}

class ErrorFeatureState extends FeatureBooksState {
  final String errorMessage;

  ErrorFeatureState(this.errorMessage);
}

class SuccFeatureState extends FeatureBooksState {
  List<BookModel> books;

  SuccFeatureState(this.books);
}
