defmodule Presence.TestCase do
  @moduledoc """
  This module defines the test case to be used Presence tests.
  Such tests rely on `ExUnit.Case`.
  """

  use ExUnit.CaseTemplate

  defmacro __using__(opts) do
    quote do
      use ExUnit.Case, async: true
      import Presence, unquote(opts)
    end
  end
end
