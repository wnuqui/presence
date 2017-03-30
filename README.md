## Presence [![Build Status](https://circleci.com/gh/wnuqui/presence.svg?style=shield&circle-token=:circle-token "Build Status")](https://circleci.com/gh/wnuqui/presence.svg)

Presence is very small library for Elixir projects that checks if a value is blank. A value is blank if it's nil, false, empty, or a whitespace string.

The complete documentation for Presence is located [here](https://hexdocs.pm/presence).

## Getting Started

Some examples can be found below, but I highly recommend you review the
API docs [here](https://hexdocs.pm/presence). There are examples for `Atom`, `BitString`, `List`, `Map` and `Tuple`.

### Adding Presence To Your Project

To use Presence with your projects, edit your `mix.exs` file and add it as a dependency:

```elixir
defp deps do
  [{:presence, "~> 7.0"}]
end
```

### Examples

To use Presence, I recommend you add
```elixir
import Presence
```
to the top of the module where you will be working with Presence module. We `import` to easily access functions from modules implementing `Presence` protocol without using the fully-qualified name.

These functions are `is_blank/1`, `is_present`, `presence`

Few examples below:

```elixir
iex> is_blank(nil)
true
```

```elixir
iex> is_blank([])
true
```

```elixir
iex> is_blank(%{})
true
```

```elixir
iex> is_present({:ok, %{data: [1, 2, 3]}})
true
```

```elixir
iex> is_present({})
false
```

```elixir
iex> presence("    ")
nil
```

## Current Implementation

Presence is a Protocol that is currently implemented by the following:
* Atom
* List
* BitString
* Map
* Tuple

Other modules can implement the Protocol by defining these functions:
- `is_blank/1`
- `is_preent/1`
- `presence/1`

## License

This software is licensed under [the MIT license](LICENSE.md).
