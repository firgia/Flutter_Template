part of 'app_translations.dart';

/// Add `.tr` to get translation value
///
/// Example :
/// ```dart
/// Keyword.language.tr
/// ```
///
/// Result :
/// * en : `Language`
/// * id : `Bahasa`
class Messages {
  static String accountType = 'account_type';
  static String alreadyHaveAccount = 'already_have_account';
}

class _MessagesWrapper {
  final String accountType;
  final String alreadyHaveAccount;

  _MessagesWrapper({
    required this.accountType,
    required this.alreadyHaveAccount,
  });

  Map<String, String> get messages => {
        Messages.accountType: accountType,
        Messages.alreadyHaveAccount: alreadyHaveAccount,
      };
}
