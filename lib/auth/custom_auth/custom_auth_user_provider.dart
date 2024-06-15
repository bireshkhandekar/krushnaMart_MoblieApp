import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class KrishnaMartAuthUser {
  KrishnaMartAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<KrishnaMartAuthUser> krishnaMartAuthUserSubject =
    BehaviorSubject.seeded(KrishnaMartAuthUser(loggedIn: false));
Stream<KrishnaMartAuthUser> krishnaMartAuthUserStream() =>
    krishnaMartAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
