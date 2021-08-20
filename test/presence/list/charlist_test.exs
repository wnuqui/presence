defmodule CharlistPresenceTest do
  use Presence.TestCase, only: [presence: 1, presence: 2]

  test "presence for blank charlist" do
    charlist = ' '
    assert presence(charlist) == nil
  end

  test "presence for blank charlist with default" do
    charlist = ' '
    default = 'a'
    assert presence(charlist, default) == default
  end

  test "presence for non-blank charlist" do
    charlist = 'a'
    assert presence(charlist) == charlist
  end

  test "presence for non-blank charlist with default" do
    charlist = 'a'
    default = 'b'
    assert presence(charlist, default) == charlist
  end
end
