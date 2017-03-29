defmodule AtomPresenceTest do
  use Presence.TestCase, only: [presence: 1]

  test "presence for `:true`" do
    assert presence(:true) == :true
  end

  test "presence for `:false`" do
    assert presence(:false) == nil
  end

  test "presence for `:atom`" do
    assert presence(:atom) == :atom
  end
end
