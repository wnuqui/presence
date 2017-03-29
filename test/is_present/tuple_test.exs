defmodule TupleIsPresentTest do
  use Presence.TestCase, only: [is_present: 1]

  test "is_present for empty tuple" do
    tuple = {}
    refute is_present(tuple)
  end

  test "is_present for non-empty tuple" do
    tuple = {:ok, 1}
    assert is_present(tuple)
  end
end
