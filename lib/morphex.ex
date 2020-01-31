defmodule Morphex do
  @moduledoc """
  Morphex is a library for mapping data from one struct to another.
  Since structs are maps Morphex can map data from a map to a struct as well.
  """

  @doc """
  Takes data from one struct (map) and populates a different struct with it based
  on what fields are mapped. 

  ## Examples

      iex> mapping = %{ :name => :username, :location => :location}
      iex> Morphex.transform(original_struct, MyLibrary.Struct, mapping)
  %MyLibrary.Struct{ :username =>  "test", :location => "here"}


  """
  def transform(original, module, mapped_keys) do
    Enum.reduce(mapped_keys, struct(module), fn {k, v}, a -> 
      Map.put(a, v, Map.get(original, k)) end)
  end
end
