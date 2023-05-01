import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:flutter/material.dart';
import 'package:flutter_firebase/guest_book.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'guest_book.dart';
import 'src/authentication.dart';
import 'src/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/codelab.png'),
          const SizedBox(
            height: 8,
          ),
          const ImageAndDetails(Icons.calendar_today, 'April 26'),
          const ImageAndDetails(Icons.location_city, 'Toronto Ont'),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
                loggedIn: appState.loggedIn,
                signOut: () {
                  FirebaseAuth.instance.signOut();
                }),
          ),
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          const Header('what we\'ll be doing'),
          const Paragraph(
              'join us for a day full of FirebaseWorkshops and Pizza'),
          // const Header('Discussion'),
          // GuestBook(addMessage: (message) => print(message))
          Consumer<ApplicationState>(
              builder: (context, appState, _) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (appState.loggedIn) ...[
                        // what does "..." do on the outside of a list?
                        const Header('Discussion'),
                        GuestBook(
                          addMessage: (message) =>
                              appState.addMessageToGuestBook(message),
                          messages: appState.guestBookMessages,
                        )
                      ]
                    ],
                  ))
        ],
      ),
    );
  }
}
