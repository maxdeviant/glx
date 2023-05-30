import gleeunit/should
import glx/stringx

pub fn stringx_lines_empty_string_test() {
  ""
  |> stringx.lines()
  |> should.equal([""])
}

pub fn stringx_lines_single_line_test() {
  "this is all on one line"
  |> stringx.lines()
  |> should.equal(["this is all on one line"])
}

pub fn stringx_lines_lf_test() {
  let expected = ["one", "two", "", "three", "", "", "four"]

  "one\ntwo\n\nthree\n\n\nfour"
  |> stringx.lines()
  |> should.equal(expected)
}

pub fn stringx_lines_trailing_lf_test() {
  let expected = ["line1", "line2", "", "", ""]

  "line1\nline2\n\n\n"
  |> stringx.lines()
  |> should.equal(expected)
}

pub fn stringx_lines_crlf_test() {
  let expected = ["one", "two", "", "three", "", "", "four"]

  "one\r\ntwo\r\n\r\nthree\r\n\r\n\r\nfour"
  |> stringx.lines()
  |> should.equal(expected)
}

pub fn stringx_lines_trailing_crlf_test() {
  let expected = ["line1", "line2", "", "", ""]

  "line1\r\nline2\r\n\r\n\r\n"
  |> stringx.lines()
  |> should.equal(expected)
}
