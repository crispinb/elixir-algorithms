defmodule BubbleSort do

  # We all know how good I am at thinking through recursion

  def bsort_r(el, [first | rest]) do
    case el > first do
      false -> [el | bsort_r(first, rest)]
      true -> [first | bsort_r(el, rest)]
    end
  end
  def bsort_r(el, []) do
    [el]
  end

  def bsort([first | rest] = list) do
    passed = bsort_r(first, rest)
    if list == passed, do: passed, else: bsort(passed)
  end

end
