defmodule BooleanIsPresentTest do
  use Presence.TestCase, only: [is_present: 1]

  test "is_present for `true`" do
    assert is_present(true)
  end

  test "is_present for `false`" do
    refute is_present(false)
  end
end
