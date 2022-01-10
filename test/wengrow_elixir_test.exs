defmodule WengrowElixirTest do
  use ExUnit.Case
  doctest WengrowElixir

  test "greets the world" do
    assert WengrowElixir.hello() == :world
  end
end
