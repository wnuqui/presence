defmodule TuplePresenceTest do
  use Presence.TestCase, only: [presence: 1]

  test "presence for empty tuple" do
    tuple = {}
    assert presence(tuple) == nil
  end

  test "presence for non-empty tuple" do
    tuple = {:ok, 1}
    assert presence(tuple) == tuple
  end
end
