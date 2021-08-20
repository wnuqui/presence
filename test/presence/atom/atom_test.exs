defmodule AtomPresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence for `:true`" do
    assert presence(:true) == :true
  end

  test "presence for `:true` with default" do
    assert presence(:true, :atom) == :true
  end

  test "presence for `:false`" do
    assert presence(:false) == nil
  end

  test "presence for `:false` with default" do
    assert presence(:false, :atom) == :atom
  end

  test "presence for `:atom`" do
    assert presence(:atom) == :atom
  end

  test "presence for `:atom`, with default" do
    assert presence(:atom, :another_atom) == :atom
  end
end
