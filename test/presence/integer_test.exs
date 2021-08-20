defmodule IntegerPresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence" do
    assert presence(1) == 1
  end

  test "presence with default" do
    assert presence(1, 2) == 1
  end
end
