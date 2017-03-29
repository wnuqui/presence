defmodule StringIsBlankTest do
  use Presence.TestCase, only: [is_blank: 1]

  test "is_blank for empty string" do
    string = "    "
    assert is_blank(string)
  end

  test "is_blank for non-empty string" do
    string = "hello"
    refute is_blank(string)
  end

  test "is_blank for string using escape sequences" do
    string = "\t\n\r"
    assert is_blank(string)
  end

  test "is_blank for string with unicode whitespace" do
    string = "\u00a0"
    assert is_blank(string)
  end
end
