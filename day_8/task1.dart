class BankAccount{
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount){
    if(amount> 0){
      _balance += amount;
      print("Add amount succesful");
    }
    else{print("Enter correct amount");
    };
  }

  void withdraw(double amount){
    if(amount<= _balance &&  amount>0){
      _balance -=amount;
      print("Amount Withdraw succesful");
    }
    else{
      print("Enter valid Amount");
    }
  }
}

void main(){
  BankAccount acc =BankAccount();
  acc.deposit(1000);
  print("Current Balance is: ${acc.balance}");
  acc.withdraw(500);
  print("After withdraw balance: ${acc.balance}");

  acc.deposit(-125);
  acc.withdraw(70000);
  
}