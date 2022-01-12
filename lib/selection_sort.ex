defmodule Algo.SelectionSort do
  # enum
  # comprehension

  def sort(list) when is_list(list) do
    sort_recur(list, [])
  end

  defp sort_recur([], sorted) do
    sorted
  end

  defp sort_recur(list, sorted) do
    max = Enum.max(list)
    sort_recur(List.delete(list, max), [max | sorted])
  end
end
