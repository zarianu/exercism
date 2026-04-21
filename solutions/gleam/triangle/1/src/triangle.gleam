import gleam/option

pub fn tri_test(a: Float, b: Float, c: Float) {
  a +. b +. c >. 0.0 && a +. b >=. c && b +. c >=. a && a +. c >=. b
}

pub fn equilateral(a: Float, b: Float, c: Float) -> Bool {
  a == b && a == c && tri_test(a, b, c)
}

pub fn isosceles(a: Float, b: Float, c: Float) -> Bool {
  { a == b || a == c || b == c } && tri_test(a, b, c)
}

pub fn scalene(a: Float, b: Float, c: Float) -> Bool {
  a != b && a != c && b != c && tri_test(a, b, c)
}
