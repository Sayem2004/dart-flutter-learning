import 'dart:io';

void main() {
  // Product 1
  print("Enter Product 1 Name:");
  String? product1Name = stdin.readLineSync();

  print("Enter Product 1 Price:");
  String? price1Str = stdin.readLineSync();
  double price1 = double.parse(price1Str ?? "0");

  print("Enter Product 1 Quantity:");
  String? quantity1Str = stdin.readLineSync();
  double quantity1 = double.parse(quantity1Str ?? "0");

  double total1 = price1 * quantity1;

  // Product 2
  print("\nEnter Product 2 Name:");
  String? product2Name = stdin.readLineSync();

  print("Enter Product 2 Price:");
  String? price2Str = stdin.readLineSync();
  double price2 = double.parse(price2Str ?? "0");

  print("Enter Product 2 Quantity:");
  String? quantity2Str = stdin.readLineSync();
  double quantity2 = double.parse(quantity2Str ?? "0");

  double total2 = price2 * quantity2;

  // Product 3
  print("\nEnter Product 3 Name:");
  String? product3Name = stdin.readLineSync();

  print("Enter Product 3 Price:");
  String? price3Str = stdin.readLineSync();
  double price3 = double.parse(price3Str ?? "0");

  print("Enter Product 3 Quantity:");
  String? quantity3Str = stdin.readLineSync();
  double quantity3 = double.parse(quantity3Str ?? "0");

  double total3 = price3 * quantity3;

  // Subtotal
  double subtotal = total1 + total2 + total3;

  // Discount 10%
  double discount = (subtotal * 10) / 100;

  // Final Payable Amount
  double finalAmount = subtotal - discount;

  // Shopping Bill
  print("\n==============================");
  print("       SHOPPING BILL");
  print("==============================");

  print("Product 1: $product1Name");
  print("Price: $price1");
  print("Quantity: $quantity1");
  print("Total: $total1");

  print("------------------------------");

  print("Product 2: $product2Name");
  print("Price: $price2");
  print("Quantity: $quantity2");
  print("Total: $total2");

  print("------------------------------");

  print("Product 3: $product3Name");
  print("Price: $price3");
  print("Quantity: $quantity3");
  print("Total: $total3");

  print("==============================");
  print("Subtotal: $subtotal");
  print("Discount (10%): $discount");
  print("Final Payable Amount: $finalAmount");
  print("==============================");
}