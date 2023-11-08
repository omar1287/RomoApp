import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home_View/Data/Repos/HomeRepo.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/fetchBestSallerBooksCategoresCubit/fetchBestSallerBooksCategoresState.dart';
class FetchBestSallerBooksCategoresCubit extends Cubit<FetchBestSallerBooksCategoresState> {
  FetchBestSallerBooksCategoresCubit(this.homeRepo) : super(InitailFetchBestSallerBooksCategoresState());
  HomeRepo homeRepo;

  Future<void> fetchBestSallerBooksCategores({required dynamic categores}) async {
    emit(LoadingFetchBestSallerBooksCategoresState());
    var result = await homeRepo.fetchBestSallerBooksCategores(categores: categores);
    result.fold((error) {
      emit(ErrorFetchBestSallerBooksCategoresState(error.messageError));
    }, (books) {
      emit(SuccFetchBestSallerBooksCategoresState(books));
    });
  }
}
