defmodule Algo.BubbleSort do
  def bsort(list) do
    processed = bsort_r(list)
    if list == processed, do: processed, else: bsort(processed)
  end

  defp bsort_r([x, y | rest]) when x > y, do: [y | bsort_r([x | rest])]
  defp bsort_r([x, y | rest]), do: [x | bsort_r([y | rest])]
  defp bsort_r(list), do: list
end
