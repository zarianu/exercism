module PerfectNumbers
  def self.aliquot_sum(num : Number) : Number
    r = 1
    i = 2
    while i <= num // 2
      if num % i == 0
        r += i
      end
      i += 1
    end
    r
  end

  def self.classify(num : Number) : String
    case
    when num < 1
      raise ArgumentError.new()
    when num > aliquot_sum(num) || aliquot_sum(num) == 1
      "deficient"
    when num == aliquot_sum(num)
      "perfect"
    when num < aliquot_sum(num)
      "abundant"
    else
      raise ArgumentError.new()
    end
  end
end
