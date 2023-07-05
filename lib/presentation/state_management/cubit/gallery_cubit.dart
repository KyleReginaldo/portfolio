import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryCubit extends Cubit<String?> {
  GalleryCubit() : super(null);

  void pickPerson({required String person}) {
    emit(person);
  }
}
