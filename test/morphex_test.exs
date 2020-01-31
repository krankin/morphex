defmodule TestStruct do
  defstruct [:a , :b , :c]
end

defmodule TestStruct2 do
  defstruct [:d , :e , :f]
end

defmodule MorphexTest do
  use ExUnit.Case

  test "simple map from one struct to another" do
    a = %TestStruct{a: 12, b: "tester", c: [1,2,3]}
    b = TestStruct2
    c = %{:a => :d ,  :b => :e, :c => :f}
    result =  Morphex.transform(a, b, c)

    assert result.d == 12
    assert result.__struct__ == TestStruct2
    assert result.e == "tester" 
    assert result.f == [1,2,3]
  end

  test "maps for a map to a struct" do
    a = %{a: 12, b: "tester", c: [1,2,3]}
    b = TestStruct2
    c = %{:a => :d ,  :b => :e, :c => :f}
    result =  Morphex.transform(a, b, c)
  
    assert result.d == 12
    assert result.__struct__ == TestStruct2
    assert result.e == "tester" 
    assert result.f == [1,2,3]
  end
end

