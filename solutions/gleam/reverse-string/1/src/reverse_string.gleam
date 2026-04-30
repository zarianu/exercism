import gleam/erlang/node
import gleam/string

fn iterate(a: List(String), acc: String) -> String {
  case a {
    [] -> acc
    [i] -> string.append(i, acc)
    [h, ..t] -> iterate(t, string.append(h, acc))
  }
}

pub fn reverse(value: String) -> String {
  case string.to_graphemes(value) {
    [] -> ""
    [h] -> h
    [h, ..t] -> iterate(t, h)
  }
}
