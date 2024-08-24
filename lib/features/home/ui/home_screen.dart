import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/helpers/extensions.dart';
import 'package:marvel_app/features/home/logic/cubit/home_cubit.dart';
import 'package:marvel_app/features/home/logic/cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Marvel App'),
      ),
      body: Center(
        child: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            state.whenOrNull(
              charactersLoading: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                );
              },
              charactersSuccess: (charactersList) {
                context.pop();

                showDialog(
                  context: context,
                  builder: (context) {
                    return const Center(
                      child: Text('Success'),
                    );
                  },
                );
              },
              charactersError: (errorHandler) {
                context.pop();

                showDialog(
                  context: context,
                  builder: (context) {
                    return const Center(
                      child: Text('Error'),
                    );
                  },
                );
              },
            );
          },
          child: ElevatedButton(
            onPressed: () {
              context.read<HomeCubit>().getAllCharacters();
            },
            child: const Text(
              'Home Screen',
            ),
          ),
        ),
      ),
    );
  }
}
