defmodule Algo.BubbleSort do
  @behaviour Algo.Sorter

  @impl Algo.Sorter
  def name(), do: "Bubble Sort"

  @impl Algo.Sorter
  def sort(list) do
    processed = bsort_r(list)
    if list == processed, do: processed, else: sort(processed)
  end

  defp bsort_r([x, y | rest]) when x > y, do: [y | bsort_r([x | rest])]
  defp bsort_r([x, y | rest]), do: [x | bsort_r([y | rest])]
  defp bsort_r(list), do: list
end
