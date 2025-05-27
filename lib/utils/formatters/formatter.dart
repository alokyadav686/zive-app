import 'package:intl/intl.dart';

class ZiveFormatter {
  /// Format a [DateTime] into a readable string.
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize format if needed
  }

  /// Format a number into currency format.
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  /// Format a US-style phone number.
  static String formatPhoneNumber(String phoneNumber) {
    // Assuming 10-digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) '
             '${phoneNumber.substring(3, 6)}-'
             '${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '${phoneNumber.substring(0, 1)} '
             '(${phoneNumber.substring(1, 4)}) '
             '${phoneNumber.substring(4, 7)}-'
             '${phoneNumber.substring(7)}';
    }
    // Add custom formatting logic for other formats if needed
    return phoneNumber;
  }
}
