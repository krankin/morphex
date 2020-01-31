# Morphex

**A Simple Module to change one struct into another**

##Reasoning
Simply put, this library doesn't do much and that's by design. Morphex solves the problem of having data in a struct 
(or map) and needing it to be in a different shape to continue your processing. By giving Morphex your original data,
the struct you want it in, and a map of the mappings, it will return you the data in the struct of your choice,
provided the mapping is correct.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `morphex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:morphex, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/morphex](https://hexdocs.pm/morphex).

