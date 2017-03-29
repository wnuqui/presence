defmodule CharlistPresenceTest do
  use Presence.TestCase, only: [presence: 1]

  test "presence for blank charlist" do
    charlist = ' '
    assert presence(charlist) == nil
  end

  test "presence for non-blank charlist" do
    charlist = 'a'
    assert presence(charlist) == charlist
  end
end
