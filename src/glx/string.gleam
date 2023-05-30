//// Extensions to `gleam/string`.

import gleam/regex

/// Returns the lines contained in the given string.
pub fn lines(value: String) -> List(String) {
  let assert Ok(newline_regex) = regex.from_string("\r?\n")

  value
  |> regex.split(with: newline_regex)
}
