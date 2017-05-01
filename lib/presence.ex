defprotocol Presence do
  @moduledoc ~S"""
  The `Presence` protocol is responsible for
  checking the presence of a value.

  The functions required to be implemented are
  `is_blank/1`, `is_present/1` and `presence/1`.
  These functions are not automatically imported
  by `Kernel`.

  Currently, these modules implements `Presence` protocol.

    - `Atom`
    - `BitString`
    - `Float`
    - `Integer`
    - `List`
    - `Map`
    - `Tuple`

  """

  @typedoc """
  The return value of `presence` function.
  """
  @type t :: \
      atom
    | bitstring
    | float
    | integer
    | list
    | map
    | tuple

  @doc ~S"""
  A value is blank if it's nil, false, empty, or a whitespace string.

  For example
    - `nil`
    - `false`
    - `[]`
    - `''`
    - `'   '`
    - `%{}`
    - `{}`
    - `""`
    - `"   "`

  are all blank.

  This simplifies
      !address || Enum.empty?(address)
  to
      is_blank(address)

  ## Examples
  ### Atom
  `nil` is blank:

      iex> is_blank(nil)
      true

  `false` is blank:

      iex> is_blank(false)
      true

  `:false` atom is blank:

      iex> is_blank(:false)
      true

  ### BitString
  A bit string (or simply string) is blank if it's empty or contains whitespaces only:

      iex> is_blank("")
      true

      iex> is_blank("   ")
      true

      iex> is_blank("\t\n\r")
      true

      iex> is_blank(" blah ")
      false

  Unicode whitespace is supported:

      iex> is_blank("\u00a0")
      true

  ### Float
  `1.1` is not blank:

      iex> is_blank(1.1)
      false

  ### Integer
  `1` is not blank:

      iex> is_blank(1)
      false

  ### List
  `[]` is blank:

      iex> is_blank([])
      true

  `' '` is blank:

      iex> is_blank(' ')
      true

  ### Map
  `%{}` is blank:

      iex> is_blank(%{})
      true

  ### Tuple
  `{}` is blank:

      iex> is_blank({})
      true
  """
  @spec is_blank(t) :: boolean
  def is_blank(value)

  @doc ~S"""
  A value is present if it's not blank.
  """
  @spec is_present(t) :: boolean
  def is_present(value)

  @doc ~S"""
  Returns the `value` if it's present otherwise returns `nil`.

      presence(value)

  is equivalent to

      is_present(value) ? value : nil

  For example, something like

      if is_present(state), do: state = state
      if is_present(country), do: country = country

      region  = state || country || "US"

  becomes

      region = presence(state) || presence(country) || "US"

  """
  @spec presence(t) :: t | nil
  def presence(value)
end

defimpl Presence, for: Atom do
  def is_blank(atom) do
    cond do
      is_nil(atom)      -> true
      is_boolean(atom)  -> atom == false
      is_atom(atom)     -> atom == false
    end
  end

  def is_present(atom), do: !is_blank(atom)

  def presence(atom) do
    if is_present(atom), do: atom, else: nil
  end
end

defimpl Presence, for: BitString do
  def is_blank(string) do
    String.strip(string) == ""
  end

  def is_present(string), do: !is_blank(string)

  def presence(string) do
    if is_present(string), do: string, else: nil
  end
end

defimpl Presence, for: Float do
  def is_blank(_), do: false

  def is_present(_), do: true

  def presence(float), do: float
end

defimpl Presence, for: Integer do
  def is_blank(_), do: false

  def is_present(_), do: true

  def presence(integer), do: integer
end

defimpl Presence, for: List do
  def is_blank(charlist) do
    charlist = charlist
    |> to_string
    |> String.replace(" ", "")

    byte_size(charlist) == 0
  end

  def is_present(charlist), do: !is_blank(charlist)

  def presence(charlist) do
    if is_present(charlist), do: charlist, else: nil
  end
end

defimpl Presence, for: Map do
  def is_blank(map) do
    keys = Map.keys(map)
    length(keys) == 0
  end

  def is_present(map), do: !is_blank(map)

  def presence(map) do
    if is_present(map), do: map, else: nil
  end
end

defimpl Presence, for: Tuple do
  def is_blank(tuple) do
    list = Tuple.to_list(tuple)
    length(list) == 0
  end

  def is_present(tuple), do: !is_blank(tuple)

  def presence(tuple) do
    if is_present(tuple), do: tuple, else: nil
  end
end
