defmodule StringPresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence for empty string" do
    string = "    "
    assert presence(string) == nil
  end

  test "presence for empty string with default" do
    string = "    "
    default = "hello"
    assert presence(string, default) == default
  end

  test "presence for non-empty string" do
    string = "hello"
    assert presence(string) == string
  end

  test "presence for non-empty string with default" do
    string = "hello"
    default = "goodbye"
    assert presence(string, default) == string
  end
end
