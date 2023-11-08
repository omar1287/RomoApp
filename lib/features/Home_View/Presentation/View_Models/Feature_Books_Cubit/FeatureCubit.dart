import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home_View/Data/Repos/HomeRepo.dart';
import 'package:bookly_app/features/Home_View/Presentation/View_Models/Feature_Books_Cubit/FeatureState.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(InitailFeatureState());
  HomeRepo homeRepo;

  Future<void> featureBook() async {
    emit(LoadingFeatureState());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((error) {
      emit(ErrorFeatureState(error.messageError));
    }, (books) {
      emit(SuccFeatureState(books));
    });
  }
}
