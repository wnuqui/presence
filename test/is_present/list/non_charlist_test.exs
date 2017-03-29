defmodule NonCharlistIsPresentTest do
  use Presence.TestCase, only: [is_present: 1]

  test "is_present for empty list" do
    list = []
    refute is_present(list)
  end

  test "is_present for non-empty list" do
    list = [1]
    assert is_present(list)
  end
end
