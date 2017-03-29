defmodule TupleIsBlankTest do
  use Presence.TestCase, only: [is_blank: 1]

  test "is_blank for empty tuple" do
    tuple = {}
    assert is_blank(tuple)
  end

  test "is_blank for non-empty tuple" do
    tuple = {:ok, 1}
    refute is_blank(tuple)
  end
end
