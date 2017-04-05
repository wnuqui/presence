defmodule FloatIsBlankTest do
  use Presence.TestCase, only: [is_blank: 1]

  test "is_blank" do
    refute is_blank(1.1)
  end
end
