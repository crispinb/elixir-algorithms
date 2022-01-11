defmodule Algo.BubbleSortPerfTests do
  use ExUnit.Case, async: true
  alias Algo.BubbleSort, as: B
  alias Algo.BubbleAlt, as: A
  @moduletag :perf

  test "all sorts" do
    original = Enum.to_list(1..10000)
    shuffled = Enum.shuffle(original)

    Benchee.run(%{
      "bubble_sort" => fn ->
        sorted = B.bsort(shuffled)
        assert sorted == original
      end
    })
  end
end
