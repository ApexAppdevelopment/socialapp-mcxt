import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class McxtSocialFirebaseUser {
  McxtSocialFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

McxtSocialFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<McxtSocialFirebaseUser> mcxtSocialFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<McxtSocialFirebaseUser>(
      (user) {
        currentUser = McxtSocialFirebaseUser(user);
        return currentUser!;
      },
    );
