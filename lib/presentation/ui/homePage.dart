import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architechture/application/cubit/user/user_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("HomePage User"),
          ),
          body: Builder(builder: (context) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is UserErrorState) {
              return Center(
                child: Text(state.error),
              );
            } else if (state is UserCompleteState) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.data[index].name.toString()),
                    subtitle: Text(state.data[index].email.toString()),

                  );
                },
                itemCount: state.data.length,
              );
            } else {
              return const SizedBox.shrink();
            }
          }),
        );
      },
    );
  }
}
