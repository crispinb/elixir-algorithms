defmodule Algo.BubbleSortPerfTests do
  use ExUnit.Case, async: false
  @moduletag :perf

  setup do
    %{impls: [Algo.BubbleSort, Algo.InsertionSort, Algo.SelectionSort]}
  end

  test "bench all the sorts", %{impls: impls} do
    original = Enum.to_list(1..10000)
    shuffled = Enum.shuffle(original)

    sorts =
      impls
      |> Enum.map(fn impl ->
        {impl.name(),
         fn ->
           sorted = impl.sort(shuffled)
           assert sorted == original
         end}
      end)
      |> Enum.into(%{})

    Benchee.run(sorts)
  end
end
