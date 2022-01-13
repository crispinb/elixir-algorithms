defmodule Algo.InsertionSortTest do
  use ExUnit.Case, async: true
  alias Algo.InsertionSort, as: S

  test "empty list" do
    assert S.sort([]) == []
  end

  test "one element list" do
    assert S.sort([1]) == [1]
  end

  test "presorted list" do
    assert S.sort([1, 2, 3]) == [1, 2, 3]
  end

  test "unsorted list" do
    assert S.sort([3, 2, 1]) == [1, 2, 3]
  end

  test "unsorted list w/ repeats" do
    assert S.sort([3, 2, 1, 2]) == [1, 2, 2, 3]
  end

  test "large presorted list" do
    list = Enum.to_list(1..1000)
    assert S.sort(list) == list
  end

  # bsort predictably too slow to make list too big
  test "large unsorted list" do
    sorted = Enum.to_list(1..1000)
    unsorted = Enum.shuffle(sorted)

    assert S.sort(unsorted) == sorted
  end

end
