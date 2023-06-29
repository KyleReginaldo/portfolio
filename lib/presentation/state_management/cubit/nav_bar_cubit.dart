import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(Home());

  void onNavigate({required int page}) {
    switch (page) {
      case 1:
        emit(Home());
      case 2:
        emit(About());
      case 3:
        emit(Sched());
      case 4:
        emit(Hobby());
      case 5:
        emit(Resume());
      case 6:
        emit(Educ());
      case 7:
        emit(Gallery());
    }
  }
}
