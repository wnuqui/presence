defmodule StringPresenceTest do
  use Presence.TestCase, only: [presence: 1]

  test "presence for empty string" do
    string = "    "
    assert presence(string) == nil
  end

  test "presence for non-empty string" do
    string = "hello"
    assert presence(string) == string
  end
end
