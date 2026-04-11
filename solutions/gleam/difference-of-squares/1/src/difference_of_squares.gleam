fn sum(n: Int) -> Int {
  case n {
    1 -> 1
    i -> i + sum(i - 1)
  }
}

pub fn square_of_sum(n: Int) -> Int {
  sum(n) * sum(n)
}

pub fn sum_of_squares(n: Int) -> Int {
  case n {
    1 -> 1
    i -> i * i + sum_of_squares(i - 1)
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
