defmodule MapIsBlankTest do
  use Presence.TestCase, only: [is_blank: 1]

  test "is_blank for empty map" do
    map = %{}
    assert is_blank(map)
  end

  test "is_blank for non-empty map" do
    map = %{count: 1}
    refute is_blank(map)
  end
end
