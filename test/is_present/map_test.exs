defmodule MapIsPresentTest do
  use Presence.TestCase, only: [is_present: 1]

  test "is_present for empty map" do
    map = %{}
    refute is_present(map)
  end

  test "is_present for non-empty map" do
    map = %{count: 1}
    assert is_present(map)
  end
end
