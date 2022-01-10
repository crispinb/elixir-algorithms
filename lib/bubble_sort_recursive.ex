defmodule Algo.BubbleSort do
  defp bsort_r(el, [first | rest]) do
    case el > first do
      false -> [el | bsort_r(first, rest)]
      true -> [first | bsort_r(el, rest)]
    end
  end

  defp bsort_r(el, []) do
    [el]
  end

  def bsort([first | rest] = list) do
    passed = bsort_r(first, rest)
    if list == passed, do: passed, else: bsort(passed)
  end
  def bsort([]) do
    []
  end
end
