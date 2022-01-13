# here's one way to parameterise tests if req'd:
# https://gist.github.com/thiagoa/247b625fa0883346ed78ed2f425473bb

defmodule Algo.BubbleSortPerfTests do
  use ExUnit.Case, async: true
  alias Algo.BubbleSort, as: B
  alias Algo.BubbleAlt, as: A
  alias Algo.SelectionSort, as: S
  alias Algo.InsertionSort, as: I
  @moduletag :perf

  test "all sorts" do
    original = Enum.to_list(1..10000)
    shuffled = Enum.shuffle(original)

    Benchee.run(%{
      "bubble_sort" => fn ->
        sorted = B.bsort(shuffled)
        assert sorted == original
      end,
      "selection_sort" => fn ->
        sorted = S.sort(shuffled)
        assert sorted == original
      end,
      "insertion_sort" => fn ->
        sorted = I.sort(shuffled)
        assert sorted == original
      end
    })
  end
end
