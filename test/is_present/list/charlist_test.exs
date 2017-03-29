defmodule CharlistIsPresentTest do
  use Presence.TestCase, only: [is_present: 1]

  test "is_present for blank charlist" do
    charlist = ' '
    refute is_present(charlist)
  end

  test "is_present for non-blank charlist" do
    charlist = 'a'
    assert is_present(charlist)
  end
end
