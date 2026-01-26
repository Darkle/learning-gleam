import gleam/io
import gleam/dict
import gleam/string as text

pub fn main() {
  // io.println("Hello world!")
  // io.println(text.reverse("'Hello, Joe'"))
  // echo 4
  // let thing = 4 + { 5 * 8 }
  // echo thing
  let thing = dict.new()
  dict.insert(thing, "asd", 3)
  "1"
  |> text.append("2")
  |> text.append("3", _)
  |> io.println
}
