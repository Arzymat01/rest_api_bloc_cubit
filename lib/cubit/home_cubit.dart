import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rest_api_block/service/home_service.dart';

import '../models/user_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.service) : super(const HomeState());

  final HomeService service;

  Future<void> getUsers() async {
    emit(const HomeState(status: FetchStatus.loading));
    final users = await service.getUsers();
    if (users != null) {
      emit(HomeState(
        status: FetchStatus.succes,
        users: users,
      ));
    } else {
      emit(const HomeState(status: FetchStatus.error));
    }
  }
}
