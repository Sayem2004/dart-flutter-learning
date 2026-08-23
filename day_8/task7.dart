abstract class Payment{

  void pay();
}

class BkashPayment implements Payment{

  @override
  void pay(){
    print("Success Bkash payment");
  }
}
class CardPayment implements Payment{

  @override
  void pay(){
    print("Success card payment");
  }
}
class CashPayment implements Payment{

  @override
  void pay(){
    print("Success cash payment");
  }
}

void main(){
  Payment p1 = BkashPayment();
  Payment p2 = CardPayment();
  Payment p3 = CashPayment();
  p1.pay();
  p2.pay();
  p3.pay();
}