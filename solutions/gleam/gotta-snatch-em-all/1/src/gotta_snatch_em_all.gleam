import gleam/set.{type Set}
import gleam/list

pub fn new_collection(card: String) -> Set(String) {
  set.from_list([card])
}

pub fn add_card(collection: Set(String), card: String) -> #(Bool, Set(String)) {
  case set.contains(collection, card) {
    True -> #(True, collection)
    False -> #(False, set.insert(collection, card))
  }
}

pub fn trade_card(
  my_card: String,
  their_card: String,
  collection: Set(String),
) -> #(Bool, Set(String)) {
  case set.contains(collection, my_card) {
    True -> #(True, set.delete(set.insert(collection, their_card), my_card))
    False -> #(False, set.insert(collection, their_card))
  }
}

pub fn boring_cards(collections: List(Set(String))) -> List(String) {
  case collections {
    [a, b] -> set.to_list(set.intersection(a, b))
    _ -> []
  }

}

pub fn total_cards(collections: List(Set(String))) -> Int {
  case collections {
    [a, b] -> list.length(set.to_list(set.union(a, b)))
    _ -> 0
  }
}

pub fn shiny_cards(collection: Set(String)) -> Set(String) {
  todo
}
