import argv
import envoy
import gleam/int
import gleam/io
import gleam/list
import gleam/result
// import gleam/string
import gleam/uri
import vars/internal

pub fn main() {
  case argv.load().arguments {
    ["get", name] -> get(name)
    _ -> io.println("Usage: vars get <name>")
  }
  // let foo = get("asd")

  let add_eleven = int.add(_, 11)
  add_eleven |> list.map([1, 2, 3], _)
  io.println("hello")
  let asd = uri.parse("h<tpsexamplecomment")
  case asd {
    Ok(u) -> io.println(u.path)
    Error(e) -> echo e
  }
}

fn get(name: String) -> Nil {
  let value = envoy.get(name) |> result.unwrap("")
  io.println(internal.format_pair(name, value))
}

pub type User {
  User(first_name: String, last_name: String, likes: List(String))
}
