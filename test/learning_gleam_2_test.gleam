import gleeunit
import vars/internal

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn formant_pair_test() {
  let greeting = internal.format_pair("hello", "world")
  assert greeting == "hello=world"
}
