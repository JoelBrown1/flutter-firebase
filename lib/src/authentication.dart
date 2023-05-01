import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets.dart';

class AuthFunc extends StatelessWidget {
  const AuthFunc({
    super.key,
    required this.loggedIn,
    required this.signOut,
  });

  final bool loggedIn;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    print('Auth - value in loggedIn: ${loggedIn}');
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(
              left: 24,
              bottom: 8,
            ),
            child: StyledButton(
              child: !loggedIn ? const Text('RSVP') : const Text('Logout'),
              onPressed: () {
                !loggedIn ? context.push('/sign-in') : signOut();
              },
            )),
      ],
    );
  }
}
