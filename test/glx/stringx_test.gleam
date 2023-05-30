import gleeunit/should
import glx/stringx

pub fn stringx_lines_lf_test() {
  let expected = ["one", "two", "", "three", "", "", "four"]

  "one\ntwo\n\nthree\n\n\nfour"
  |> stringx.lines()
  |> should.equal(expected)
}

pub fn stringx_lines_crlf_test() {
  let expected = ["one", "two", "", "three", "", "", "four"]

  "one\r\ntwo\r\n\r\nthree\r\n\r\n\r\nfour"
  |> stringx.lines()
  |> should.equal(expected)
}
