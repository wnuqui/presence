defmodule MapPresenceTest do
  use Presence.TestCase, only: [presence: 1]

  test "presence for empty map" do
    map = %{}
    assert presence(map) == nil
  end

  test "presence for non-empty map" do
    map = %{count: 1}
    assert presence(map) == map
  end
end
