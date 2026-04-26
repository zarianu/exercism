pub type Pizza {
  Margherita
  Caprese
  Formaggio
  ExtraSauce(Pizza)
  ExtraToppings(Pizza)
}

pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza {
    Margherita -> 7
    Caprese -> 9
    Formaggio -> 10
    ExtraSauce(p) -> 1 + pizza_price(p)
    ExtraToppings(p) -> 2 + pizza_price(p)
  }
}

fn pizzas(order: List(Pizza), acc: Int) {
  case order {
    [] -> acc
    [p, ..t] -> pizzas(t, acc + pizza_price(p))
  }
}

pub fn order_price(order: List(Pizza)) -> Int {
  case order {
    [] -> 0
    [p] -> 3 + pizza_price(p)
    [p1, p2] -> 2 + pizza_price(p1) + pizza_price(p2)
    [_, ..] -> pizzas(order, 0)
  }
}
