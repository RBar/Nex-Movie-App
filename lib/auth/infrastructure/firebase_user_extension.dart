import 'package:firebase_auth/firebase_auth.dart';

import '../domain/user.dart';
import '../domain/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
        id: UniqueId.fromUniqueString(uid),
        photoUrl: photoUrl,
        name: displayName,
        emailAddress: email);
  }
}
//! you are doing this with the extension some(User(id: UniqueId.fromUniqueString(firebaseUser.uid))
