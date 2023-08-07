part of 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitialState()) {
    getData();
  }

  final UserRepository _userRepository = UserRepository();

  Future<void> getData() async {
    emit(const UserLoadingState());
    Either<String, List<UserModel>> response = await _userRepository.getUsers();
    response.fold((error) => emit(UserErrorState(error)),
        (data) => emit(UserCompleteState(data)));
  }
  
}
