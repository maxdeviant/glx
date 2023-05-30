import gleeunit/should
import glx/string

pub fn string_lines_lf_test() {
  let expected = ["one", "two", "", "three", "", "", "four"]

  "one\ntwo\n\nthree\n\n\nfour"
  |> string.lines()
  |> should.equal(expected)
}

pub fn string_lines_crlf_test() {
  let expected = ["one", "two", "", "three", "", "", "four"]

  "one\r\ntwo\r\n\r\nthree\r\n\r\n\r\nfour"
  |> string.lines()
  |> should.equal(expected)
}
