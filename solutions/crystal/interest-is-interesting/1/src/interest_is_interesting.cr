class SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      3.213
    elsif balance < 1000
      0.5
    elsif balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.interest(balance)
    balance * (interest_rate(balance) / 100)
  end

  def self.annual_balance_update(balance)
    balance + interest(balance)
  end

  def self.years_before_desired_balance(current_balance, target_balance)
    i = 0
    while current_balance < target_balance
      i += 1
      current_balance = annual_balance_update(current_balance)
    end
    i
  end
end
