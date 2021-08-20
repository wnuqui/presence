defmodule MapPresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence for empty map" do
    map = %{}
    assert presence(map) == nil
  end

  test "presence for empty map with default" do
    map = %{}
    default = %{count: 0}
    assert presence(map, default) == default
  end

  test "presence for non-empty map" do
    map = %{count: 1}
    assert presence(map) == map
  end

  test "presence for non-empty map with default" do
    map = %{count: 1}
    default = %{count: 0}
    assert presence(map, default) == map
  end
end
