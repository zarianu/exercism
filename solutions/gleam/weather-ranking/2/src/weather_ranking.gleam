import gleam/float
import gleam/list
import gleam/order.{type Order}

pub type City {
  City(name: String, temperature: Temperature)
}

pub type Temperature {
  Celsius(Float)
  Fahrenheit(Float)
}

pub fn fahrenheit_to_celsius(f: Float) -> Float {
  { f -. 32.0 } /. 1.8
}

pub fn temperature_to_celsius(t: Temperature) -> Float {
  case t {
    Celsius(t) -> t
    Fahrenheit(t) -> fahrenheit_to_celsius(t)
  }
}

pub fn compare_temperature(left: Temperature, right: Temperature) -> Order {
  float.compare(temperature_to_celsius(left), temperature_to_celsius(right))
}

pub fn cities_compare(left: City, right: City) -> Order {
  compare_temperature(left.temperature, right.temperature)
}

pub fn sort_cities_by_temperature(cities: List(City)) -> List(City) {
  list.sort(cities, by: cities_compare)
}
