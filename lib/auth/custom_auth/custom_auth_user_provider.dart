import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class KrishnaMartappAuthUser {
  KrishnaMartappAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<KrishnaMartappAuthUser> krishnaMartappAuthUserSubject =
    BehaviorSubject.seeded(KrishnaMartappAuthUser(loggedIn: false));
Stream<KrishnaMartappAuthUser> krishnaMartappAuthUserStream() =>
    krishnaMartappAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
