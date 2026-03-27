import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'auth_action_result.dart';

abstract class AuthFacade {
  Future<AuthActionResult> signIn({
    required BuildContext context,
    required String email,
    required String password,
  });

  Future<AuthActionResult> resetPassword({
    required BuildContext context,
    required String email,
  });

  Future<AuthActionResult> createAccount({
    required BuildContext context,
    required String email,
    required String password,
    required String displayName,
    DocumentReference? empresaRef,
  });
}
