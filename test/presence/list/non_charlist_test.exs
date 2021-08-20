defmodule NonCharlistPresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence for empty list" do
    list = []
    assert presence(list) == nil
  end

  test "presence for empty list with default" do
    list = []
    default = [0]
    assert presence(list, default) == default
  end

  test "presence for non-empty list" do
    list = [1]
    assert presence(list) == list
  end

  test "presence for non-empty list with default" do
    list = [1]
    default = [2]
    assert presence(list, default) == list
  end
end
