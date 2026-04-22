import gleam/list

pub fn today(days: List(Int)) -> Int {
  case days {
    [] -> 0
    [i, ..] -> i
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  case days {
    [] -> [1]
    [i, ..t] -> [i + 1, ..t]
  }
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
  list.contains(days, 0)
}

pub fn total(days: List(Int)) -> Int {
  case days {
    [] -> 0
    [h, ..t] -> h + total(t)
  }
}

pub fn busy_days(days: List(Int)) -> Int {
  case days {
    [] -> 0
    [h, ..t] if h > 4 -> 1 + busy_days(t)
    [_, ..t] -> busy_days(t)
  }
}
