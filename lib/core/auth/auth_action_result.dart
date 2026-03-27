enum AuthErrorType {
  invalidCredentials,
  network,
  userNotFound,
  unknown,
}

class AuthActionResult {
  final bool success;
  final String title;
  final String message;
  final String? userId;
  final bool navigateToDashboard;
  final bool openNovaEmpresaFlow;
  final AuthErrorType? errorType;

  const AuthActionResult({
    required this.success,
    required this.title,
    required this.message,
    this.userId,
    this.navigateToDashboard = false,
    this.openNovaEmpresaFlow = false,
    this.errorType,
  });

  factory AuthActionResult.ok({
    String title = 'Sucesso!',
    String message = '',
    String? userId,
    bool navigateToDashboard = false,
    bool openNovaEmpresaFlow = false,
  }) {
    return AuthActionResult(
      success: true,
      title: title,
      message: message,
      userId: userId,
      navigateToDashboard: navigateToDashboard,
      openNovaEmpresaFlow: openNovaEmpresaFlow,
    );
  }

  factory AuthActionResult.fail({
    required String title,
    required String message,
    AuthErrorType? errorType,
  }) {
    return AuthActionResult(
      success: false,
      title: title,
      message: message,
      errorType: errorType,
    );
  }
}