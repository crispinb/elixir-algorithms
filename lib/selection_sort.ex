defmodule Algo.SelectionSort do
  @behaviour Algo.Sorter
  # enum
  # comprehension

  @impl Algo.Sorter
  def name, do: "Selection Sort"

  @impl Algo.Sorter
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
