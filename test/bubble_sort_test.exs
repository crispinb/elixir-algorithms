defmodule Algo.BubbleSortTest do
  use ExUnit.Case, async: true
  alias Algo.BubbleSort, as: B

  test "empty list" do
    assert B.bsort([]) == []
  end

  test "one element list" do
    assert B.bsort([1]) == [1]
  end

  test "presorted list" do
    assert B.bsort([1, 2, 3]) == [1, 2, 3]
  end

  test "unsorted list" do
    assert B.bsort([3, 2, 1]) == [1, 2, 3]
  end

  test "large presorted list" do
    list = Enum.to_list(1..1000)
    assert B.bsort(list) == list
  end

  # bsort predictably too slow to make list too big
  test "large unsorted list" do
    sorted = Enum.to_list(1..1000)
    unsorted = Enum.shuffle(sorted)

    assert B.bsort(unsorted) == sorted
  end

  # TODO: add perf test (in 1 file for all sorts?)
  # TODO: worth a tail-recursive variant?
  # TODO: check published bubble sorts
end
