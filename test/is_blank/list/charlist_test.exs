defmodule CharlistIsBlankTest do
  use Presence.TestCase, only: [is_blank: 1]

  test "is_blank for blank charlist" do
    charlist = ' '
    assert is_blank(charlist)
  end

  test "is_blank for non-blank charlist" do
    charlist = 'a'
    refute is_blank(charlist)
  end
end
