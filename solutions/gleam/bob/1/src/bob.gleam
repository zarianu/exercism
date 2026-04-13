import gleam/string

fn no_letters(str: String) -> Bool {
  string.uppercase(str) == string.lowercase(str)
}

pub fn hey(remark: String) -> String {
  let str = string.trim(remark)
  case
    string.ends_with(str, "?"),
    str == string.uppercase(str),
    string.is_empty(str),
    no_letters(str)
  {
    True, True, False, False -> "Calm down, I know what I'm doing!"
    True, _, False, _ -> "Sure."
    False, True, False, False -> "Whoa, chill out!"
    _, _, True, _ -> "Fine. Be that way!"
    _, _, _, _ -> "Whatever."
  }
}
