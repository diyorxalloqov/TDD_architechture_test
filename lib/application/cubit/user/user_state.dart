import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architechture/domain/model/userModel.dart';
import 'package:tdd_architechture/domain/repository/user_repository.dart';

part 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserInitialState extends UserState {
  const UserInitialState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoadingState extends UserState {
  const UserLoadingState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserErrorState extends UserState {
  final String error;
  const UserErrorState(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}

class UserCompleteState extends UserState {
  final List<UserModel> data;
  const UserCompleteState(this.data);

  @override
  // TODO: implement props
  List<Object?> get props => [data];
}
