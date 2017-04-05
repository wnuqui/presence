## Presence [![Build Status](https://circleci.com/gh/wnuqui/presence.svg?style=shield&circle-token=:circle-token "Build Status")](https://circleci.com/gh/wnuqui/presence) [![Coverage Status](https://coveralls.io/repos/github/wnuqui/presence/badge.svg?branch=master)](https://coveralls.io/github/wnuqui/presence?branch=master) [![Deps Status](https://beta.hexfaktor.org/badge/all/github/wnuqui/presence.svg)](https://beta.hexfaktor.org/github/wnuqui/presence) [![Inline docs](http://inch-ci.org/github/wnuqui/presence.svg)](http://inch-ci.org/github/wnuqui/presence) [![Release](http://img.shields.io/github/release/wnuqui/presence.svg)](https://github.com/wnuqui/presence/releases/latest) [![Hex Version](https://img.shields.io/hexpm/v/presence.svg "Hex Version")](https://hex.pm/packages/presence)

Presence is very small library for Elixir projects that needs to check if a value is blank. A value is blank if it's nil, false, empty, or a whitespace string.

The complete documentation for Presence is located [here](https://hexdocs.pm/presence).

## Getting Started

Some examples can be found below, but I highly recommend you review the
API docs [here](https://hexdocs.pm/presence). There are examples for `Atom`, `BitString`, `Float`, `Integer`, `List`, `Map` and `Tuple`.

### Adding Presence To Your Project

To use Presence with your projects, edit your `mix.exs` file and add it as a dependency:

```elixir
defp deps do
  [{:presence, "~> 0.8.5"}]
end
```

### Examples

To use Presence, I recommend you add
```elixir
import Presence
```
to the top of the module where you will be working with Presence module. We `import` to easily access functions from modules implementing `Presence` protocol without using the fully-qualified name.

These functions are `is_blank/1`, `is_present/1`, `presence/1`

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
- `Atom`
- `BitString`
- `Float`
- `Integer`
- `List`
- `Map`
- `Tuple`

Other modules can implement the Protocol by defining these functions:
- `is_blank/1`
- `is_present/1`
- `presence/1`

## Inspiration

Many thanks to [Rails](http://rubyonrails.org/) for the inspiration.

## License

This software is licensed under [the MIT license](LICENSE.md).
