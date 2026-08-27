class BankAccount{
  String accountHolder ="";
  int accountNumber =0;
  double _balance = 0;

  BankAccount(this.accountHolder, this.accountNumber, this._balance);

  double get balance => _balance;

  void deposit(double amount){
    _balance +=amount;
    print("Deposit Amount: $amount");
  }
  void withdraw( double amount){
    if(_balance<amount){
      print("Enter withdraw amount lower then main blance");
    }
    else{
      _balance -=amount;

      print("Withdraw amount: $amount");
    }
  }

}
  void main(){
    BankAccount b1=BankAccount("Rahim", 012144, 5000 );

    print("Account holder Name: ${b1.accountHolder}");
    print("Account Number :${b1.accountNumber}");
    print("Account main Blance: ${b1.balance}");

    b1.deposit(2000);
    print("Blance after deposit: ${b1.balance}");
    b1.withdraw(200);
    print("Blance after Withdraw:${b1.balance}");


  }


