defmodule NonCharlistIsBlankTest do
  use Presence.TestCase, only: [is_blank: 1]

  test "is_blank for empty list" do
    list = []
    assert is_blank(list)
  end

  test "is_blank for non-empty list" do
    list = [1]
    refute is_blank(list)
  end
end
