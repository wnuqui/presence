defmodule StringIsPresentTest do
  use Presence.TestCase, only: [is_present: 1]

  test "is_present for empty string" do
    string = "    "
    refute is_present(string)
  end

  test "is_present for non-empty string" do
    string = "hello"
    assert is_present(string)
  end
end
