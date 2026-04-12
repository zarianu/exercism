import gleam/int

pub fn convert(number: Int) -> String {
  case number {
    i if { i % 3 == 0 } && { i % 5 == 0 } && { i % 7 == 0 } -> "PlingPlangPlong"
    i if { i % 3 == 0 } && { i % 5 == 0 } -> "PlingPlang"
    i if { i % 3 == 0 } && { i % 7 == 0 } -> "PlingPlong"
    i if { i % 5 == 0 } && { i % 7 == 0 } -> "PlangPlong"
    i if i % 3 == 0 -> "Pling"
    i if i % 5 == 0 -> "Plang"
    i if i % 7 == 0 -> "Plong"
    _ -> int.to_string(number)
  }
}
