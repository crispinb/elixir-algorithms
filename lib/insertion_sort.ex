defmodule Algo.InsertionSort do
  def sort(list) when is_list(list) do
    sort_impl(list, [])
  end

  defp sort_impl([], sorted), do: sorted
  defp sort_impl([h | t], sorted), do: sort_impl(t, insert(h, sorted))

  defp insert(x, []), do: [x]
  defp insert(x, sorted) when x < hd(sorted), do: [x | sorted]
  defp insert(x, [h | t]), do: [h | insert(x, t)]
end
