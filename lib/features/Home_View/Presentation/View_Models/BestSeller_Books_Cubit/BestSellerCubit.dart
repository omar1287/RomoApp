import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home_View/Data/Repos/HomeRepo.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/BestSeller_Books_Cubit/BestSallerState.dart';

class BestSallerCubit extends Cubit<BestSallerSate> {
  BestSallerCubit(this.homeRepo) : super(InitailBestSellerState());
  HomeRepo homeRepo;

  Future<void> bestSallerBook() async {
    emit(LoadingBestSellerState());
    var result = await homeRepo.fetchBestSallerBooks();
    result.fold((error) {
      emit(ErrorBestSellerState(error.messageError));
    }, (books) {
      emit(SuccBestSellerState(books));
    });
  }
}
