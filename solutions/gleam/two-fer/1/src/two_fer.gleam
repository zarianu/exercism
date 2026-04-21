import gleam/option.{type Option}

pub fn two_fer(name: Option(String)) -> String {
  case name {
    option.Some(n) -> "One for " <> n <> ", one for me."
    option.None -> "One for you, one for me."
  }
}
