// ignore_for_file: depend_on_referenced_packages

import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();

  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooks();

  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooksCategores(
      {required dynamic categores});
}
