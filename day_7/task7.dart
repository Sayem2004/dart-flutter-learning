class BankAccount{
  String accountHolder= "";
  int accountNumber= 0;
  double balance=0;
  double amount =0;

  double deposit(){
     return balance= balance+amount;

  }

  double withdraw(){
    return balance = balance -amount;

  }

  void displayBalance(){
    print("Account Holder: $accountHolder");
    print("Account Number: $accountNumber");
    print("Balance: $balance");

  }
}
void main(){
  BankAccount acc =BankAccount();
  acc.accountHolder ="Korim";
  acc.accountNumber= 8989;
  acc.balance =5000;
  acc.amount =2000;
  acc.deposit();
  acc.amount= 1000;
  acc.withdraw();

  acc.displayBalance();
}