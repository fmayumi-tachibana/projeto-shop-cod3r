class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'O endereço de email já está sendo usado por outra conta.',
    'OPERATION_NOT_ALLOWED': 'Operação não permitida',
    'TOO_MANY_ATTEMPTS_TRY_LATER': 'Tente mais tarde.',
    'EMAIL_NOT_FOUND': 'E-mail não encontrado',
    'INVALID_PASSWORD': 'A senha é inválida ou o usuário não possui uma senha.',
    'USER_DISABLED': 'Usuário foi desativado',
  };
  final String key;

  AuthException(this.key);

  @override
  String toString() {
    if (errors.containsKey(key)) {
      return errors[key];
    }

    return 'Ocorreu um erro na autenticação';
  }
}
