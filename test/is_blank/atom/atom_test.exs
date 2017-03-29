defmodule AtomIsBlankTest do
  use Presence.TestCase, only: [is_blank: 1]

  test "is_blank for `:true`" do
    refute is_blank(:true)
  end

  test "is_blank for `:false`" do
    assert is_blank(:false)
  end

  test "is_blank for `:atom`" do
    refute is_blank(:atom)
  end
end
