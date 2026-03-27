import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';

import 'auth_action_result.dart';
import 'auth_facade.dart';

class FirebaseAuthFacade implements AuthFacade {
  const FirebaseAuthFacade();

  @override
  Future<AuthActionResult> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      final user = await authManager.signInWithEmail(
        context,
        email,
        password,
      );

      if (user == null) {
        return AuthActionResult.fail(
          title: 'Erro!',
          message: 'Erro desconhecido ao fazer login',
          errorType: AuthErrorType.unknown,
        );
      }

      return AuthActionResult.ok(
        title: 'Sucesso!',
        message: 'Login realizado com sucesso.',
        userId: user.uid,
        navigateToDashboard: true,
      );
    } catch (e) {
      return AuthActionResult.fail(
        title: 'Erro!',
        message: 'Credenciais inválidas.',
        errorType: AuthErrorType.invalidCredentials,
      );
    }
  }

  @override
  Future<AuthActionResult> resetPassword({
    required BuildContext context,
    required String email,
  }) async {
    try {
      final queryOutput = await queryUsersRecordOnce(
        queryBuilder: (usersRecord) => usersRecord.where(
          'email',
          isEqualTo: email,
        ),
      );

      final userRecord = queryOutput.firstOrNull;

      if (userRecord?.email == null || userRecord!.email.isEmpty) {
        return AuthActionResult.fail(
          title: 'Erro',
          message: 'Essa conta não existe',
          errorType: AuthErrorType.userNotFound,
        );
      }

      await authManager.resetPassword(
        email: email,
        context: context,
      );

      return AuthActionResult.ok(
        title: 'Sucesso!',
        message: 'Email de recuperação de senha enviado',
      );
    } catch (e) {
      return AuthActionResult.fail(
        title: 'Erro',
        message: 'Falha ao recuperar senha.',
        errorType: AuthErrorType.network,
      );
    }
  }

  @override
  Future<AuthActionResult> createAccount({
    required BuildContext context,
    required String email,
    required String password,
    required String displayName,
    DocumentReference? empresaRef,
  }) async {
    try {
      final user = await authManager.createAccountWithEmail(
        context,
        email,
        password,
      );

      if (user == null) {
        return AuthActionResult.fail(
          title: 'Erro',
          message: 'Erro ao criar usuário',
          errorType: AuthErrorType.unknown,
        );
      }

      await UsersRecord.collection.doc(user.uid).update(
            createUsersRecordData(
              isAdmin: true,
              totalLeads: 0,
              totalReunioes: 0,
              totalLigacoes: 0,
              totalVendas: 0,
              totalPerdidos: 0,
              displayName: displayName,
              empresaRef: empresaRef,
            ),
          );

      // Fluxo: usuário criou conta sem empresa vinculada ainda.
      if (empresaRef == null || empresaRef.id.isEmpty) {
        return AuthActionResult.ok(
          title: 'Sucesso!',
          message: 'Usuário criado',
          userId: user.uid,
          openNovaEmpresaFlow: true,
        );
      }

      // Fluxo: usuário foi criado já associado a uma empresa existente.
      if (currentUserReference?.path == null ||
          currentUserReference!.path.isEmpty) {
        return AuthActionResult.fail(
          title: 'Erro',
          message: 'Erro desconhecido ao criar usuário',
          errorType: AuthErrorType.unknown,
        );
      }

      await currentUserReference!.update(
        createUsersRecordData(
          empresaRef: empresaRef,
          isAdmin: false,
        ),
      );

      return AuthActionResult.ok(
        title: 'Sucesso!',
        message: 'Usuário criado',
        userId: user.uid,
        navigateToDashboard: true,
      );
    } catch (e) {
      return AuthActionResult.fail(
        title: 'Erro',
        message: 'Falha ao criar usuário.',
        errorType: AuthErrorType.unknown,
      );
    }
  }
}