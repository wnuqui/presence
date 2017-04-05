defmodule IntegerIsPresentTest do
  use Presence.TestCase, only: [is_present: 1]

  test "is_present" do
    assert is_present(1)
  end
end
