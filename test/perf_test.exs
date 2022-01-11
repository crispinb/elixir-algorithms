defmodule Algo.BubbleSortPerfTests do
  use ExUnit.Case, async: true
  alias Algo.BubbleSort, as: B
  @moduletag :perf

  test "all sorts" do
    original = Enum.to_list(1..1000)
    shuffled  = Enum.shuffle(original)

    Benchee.run( %{
      "bubble_sort" => fn ->
        sorted = B.bsort(shuffled)
        assert sorted == original
      end
    })

  end

end
