defmodule BooleanPresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence for `true`" do
    assert presence(true) == true
  end

  test "presence for `true` with default" do
    assert presence(true, :default) == true
  end

  test "presence for `false`" do
    assert presence(false) == nil
  end

  test "presence for `false` with default" do
    assert presence(false, :default) == :default
  end
end
