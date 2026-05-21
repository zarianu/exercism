module Squares
  def self.square_of_sum(n : Int32) : Int32
    ((n + n**2) / 2)**2
  end

  def self.sum_of_squares(n : Int32) : Int32
    r = 0
    (1..n).each do |i|
      r += i**2
    end
    r
  end

  def self.difference_of_squares(n : Int32) : Int32
    self.square_of_sum(n) - self.sum_of_squares(n)
  end
end
