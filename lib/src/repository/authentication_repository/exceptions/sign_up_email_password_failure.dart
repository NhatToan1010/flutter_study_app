class SignUpEmailAndPasswordFailure {
  final String message;

  const SignUpEmailAndPasswordFailure([this.message = "An error occurred!"]);

  factory SignUpEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpEmailAndPasswordFailure(
            'Make sure your password strong enough.');
      case 'invalid-email':
        return const SignUpEmailAndPasswordFailure(
            'Email is not valid or badly formatted.');
      case 'email-already-in-use':
        return const SignUpEmailAndPasswordFailure(
            'An account already exists.');
      case 'operation-not-allowed':
        return const SignUpEmailAndPasswordFailure('Operation is not allowed.');
      case 'user-disabled':
        return const SignUpEmailAndPasswordFailure(
            'This user has been disabled. Please contact support for help');
      default:
        return const SignUpEmailAndPasswordFailure();
    }
  }
}
