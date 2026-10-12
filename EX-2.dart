
class BankAccount {
    // TODO
    int ID;
    String name;
    double balance;
    BankAccount({required this.ID,required this.balance,required this.name}){}
    int get id => ID;
    String get _name =>name;
    double get _balance =>balance;
    
    
    void withdraw(double amount) {
      if (balance - amount < 0) {
        throw Exception('Insufficient balance for withdrawal!');
    }
      balance -= amount;
    }
    void credit(double amount) {
      balance += amount;
  }
}

class Bank {
    // TODO
    String name;
    List<BankAccount> account = [];
    Bank({required this.name});

    BankAccount createAccount(int accountId, String accountOwner) {
      bool idExists = account.any((account) => account.id == accountId);
      if (idExists) {
        throw Exception('Account with ID $accountId already exists!');
    }
    BankAccount newAccount = BankAccount(ID: accountId, name: accountOwner, balance: 0.0);
    account.add(newAccount);
    return newAccount;
    }
}
 
void main() {

  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
     ronanAccount.withdraw(75); // This will throw an exception
   } catch (e) {
     print(e); // Output: Insufficient balance for withdrawal!
   }

   try {
     myBank.createAccount(100, 'Honlgy'); // This will throw an exception
   } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
   }
}
