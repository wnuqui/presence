defmodule TuplePresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence for empty tuple" do
    tuple = {}
    assert presence(tuple) == nil
  end

  test "presence for empty tuple with default" do
    tuple = {}
    default = {:ok, 1}
    assert presence(tuple, default) == default
  end

  test "presence for non-empty tuple" do
    tuple = {:ok, 1}
    assert presence(tuple) == tuple
  end

  test "presence for non-empty tuple with default" do
    tuple = {:ok, 1}
    default = {:ok, 0}
    assert presence(tuple, default) == tuple
  end
end
