class BankAccount {
  int accountNumber;
  String accountName;
  double balance;

  BankAccount(this.accountNumber, this.accountName, this.balance);

  double getBalance() {
    return balance;
  }

  void printAccountInfo() {
    print("----- Bank Account Info -----");
    print("Account Number : $accountNumber");
    print("Account Name   : $accountName");
    print("Balance        : $balance");
  }
}

// -----------------------------------------------------

class SavingAccount extends BankAccount {
  double interestRate = 0.12;

  SavingAccount(int accountNumber, String accountName, double balance)
      : super(accountNumber, accountName, balance);

  double getInterest() {
    return balance * interestRate;
  }

  void printSavingInfo() {
    print("----- Saving Account Info -----");
    printAccountInfo();
    print("Interest Rate : $interestRate");
    print("Interest Value: ${getInterest()}");
  }
}

// -----------------------------------------------------

class CheckingAccount extends BankAccount {
  double amount = 0;

  CheckingAccount(int accountNumber, String accountName, double balance)
      : super(accountNumber, accountName, balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Balance is not enough!");
    }
  }

  void printCheckingInfo() {
    print("----- Checking Account Info -----");
    printAccountInfo();
  }
}

// -----------------------------------------------------

void main() {
  
  SavingAccount sa = SavingAccount(101, "Waleed Saving", 1000);
  sa.printSavingInfo();
  print("");

  
  CheckingAccount ca = CheckingAccount(202, "Waleed Checking", 500);
  ca.deposit(200);
  ca.withdraw(150);
  ca.printCheckingInfo();
}
