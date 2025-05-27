class TPricingCalculator {
  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// Dummy method: Get tax rate based on location
  static double getTaxRateForLocation(String location) {
    switch (location.toLowerCase()) {
      case 'new york':
        return 0.08;
      case 'california':
        return 0.075;
      case 'texas':
        return 0.065;
      default:
        return 0.05; // Default tax rate
    }
  }

  /// Dummy method: Get shipping cost based on location
  static double getShippingCost(String location) {
    switch (location.toLowerCase()) {
      case 'new york':
        return 5.00;
      case 'california':
        return 7.50;
      case 'texas':
        return 6.00;
      default:
        return 4.00; // Default shipping cost
    }
  }
}
