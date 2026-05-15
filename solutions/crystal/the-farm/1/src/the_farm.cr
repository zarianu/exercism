class InvalidCowsError < Exception
  def initialize(@message : String)
  end
end

module TheFarm
  def self.divide_food(food : FodderCalculator, number_of_cows : Int32)
    begin
      food.fodder_amount! * food.fattening_factor! / number_of_cows
    rescue
      0
    end

  end

  def self.validate_input_and_divide_food(food : FodderCalculator, number_of_cows : Int32)
    number_of_cows > 0 ? TheFarm.divide_food(food, number_of_cows) : raise "Number of cows must be greater than 0"
  end

  def self.validate_number_of_cows(number_of_cows : Int32)
    case
    when number_of_cows < 0 then raise InvalidCowsError.new("#{number_of_cows} cows are invalid: there are no negative cows")
    when number_of_cows == 0 then raise InvalidCowsError.new("0 cows are invalid: no cows don't need food")
    else nil
    end
  end
end
