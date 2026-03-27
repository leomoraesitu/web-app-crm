import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:web_app_c_r_m/core/auth/auth_action_result.dart';
import 'package:web_app_c_r_m/core/auth/auth_facade.dart';

class FakeAuthFacade implements AuthFacade {
  final AuthActionResult signInResult;
  final AuthActionResult resetPasswordResult;
  final AuthActionResult createAccountResult;

  const FakeAuthFacade({
    this.signInResult = const AuthActionResult(
      success: true,
      title: 'Sucesso!',
      message: 'Login realizado com sucesso.',
      navigateToDashboard: true,
    ),
    this.resetPasswordResult = const AuthActionResult(
      success: true,
      title: 'Sucesso!',
      message: 'Email de recuperação enviado.',
    ),
    this.createAccountResult = const AuthActionResult(
      success: true,
      title: 'Sucesso!',
      message: 'Conta criada com sucesso.',
      navigateToDashboard: true,
    ),
  });

  @override
  Future<AuthActionResult> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    return signInResult;
  }

  @override
  Future<AuthActionResult> resetPassword({
    required BuildContext context,
    required String email,
  }) async {
    return resetPasswordResult;
  }

  @override
  Future<AuthActionResult> createAccount({
    required BuildContext context,
    required String email,
    required String password,
    required String displayName,
    DocumentReference? empresaRef,
  }) async {
    return createAccountResult;
  }
}