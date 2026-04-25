import gleam/string

pub fn first_letter(name: String) {
  string.trim(name) |> string.first
}

pub fn initial(name: String) {
  first_letter(name) <> "."
}

pub fn initials(full_name: String) {
  case string.split(full_name, on: " ") {
    [a, b] -> initial(a) <> " " <> initial(b)
  }
}

pub fn pair(full_name1: String, full_name2: String) {
  //      ******       ******
  //    **      **   **      **
  //  **         ** **         **
  // **            *            **
  // **                         **
  // **     X. X.  +  X. X.     **
  //  **                       **
  //    **                   **
  //      **               **
  //        **           **
  //          **       **
  //            **   **
  //              ***
  //               *
  todo
}
