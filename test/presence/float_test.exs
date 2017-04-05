defmodule FloatPresenceTest do
  use Presence.TestCase, only: [presence: 1]

  test "presence" do
    assert presence(1.1) == 1.1
  end
end
