defmodule NonCharlistPresenceTest do
  use Presence.TestCase, only: [presence: 1]

  test "presence for empty list" do
    list = []
    assert presence(list) == nil
  end

  test "presence for non-empty list" do
    list = [1]
    assert presence(list) == list
  end
end
