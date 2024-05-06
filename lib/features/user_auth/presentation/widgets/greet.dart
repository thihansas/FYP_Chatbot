import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase/constants/constants1.dart';
import 'package:flutter_firebase/features/app/bloc/home_bloc.dart';
import 'package:flutter_firebase/features/user_auth/presentation/widgets/notification_icon.dart';

class Greet extends StatelessWidget {
  const Greet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Text(
              'Hi, Jared! ${state.mood}',
              style: greetText,
            );
          },
        ),
        const NotificationIcon()
      ],
    );
  }
}
