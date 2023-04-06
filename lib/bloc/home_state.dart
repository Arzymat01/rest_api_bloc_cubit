part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSucces extends HomeState {
  const HomeSucces(this.users);

  final List<User> users;
}

class HomeError extends HomeState {}
