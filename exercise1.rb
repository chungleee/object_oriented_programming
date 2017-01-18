# define class BankAccount
class BankAccount
  def initialize(balance, interest_rate)
    # instant variable
    @balance = balance
    @interest_rate = interest_rate
  end

  # instance method "deposit"
  def deposit(amount)
    @balance += amount
  end

  # instance method "withdraw"
  def withdraw(amount)
    @balance -= amount
  end

  # instance method "gain_interest)"
  def gain_interest
    @balance *= @interest_rate
  end
end
