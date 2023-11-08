import 'package:bookly_app/core/Utiles/Api_Service.dart';
import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/features/Home_View/Data/Models/BookModel.dart';
import 'package:bookly_app/features/Home_View/Data/Repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class homeRepoImpl extends HomeRepo {
  ApiService apiService;

  homeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooks() async {
    try {
      var data = await apiService.get(
          getNew: 'volumes?Filtering=free-ebooks &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerExpFailure.dioError(e));
      }
      return Left(ServerExpFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async{
    try {
      var data = await apiService.get(
          getNew: 'volumes?q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerExpFailure.dioError(e));
      }
      return Left(ServerExpFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooksCategores({required categores}) async{
    try {
      var data = await apiService.get(
          getNew: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerExpFailure.dioError(e));
      }
      return Left(ServerExpFailure(e.toString()));
    }
  }
}
