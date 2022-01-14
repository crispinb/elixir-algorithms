defmodule Algo.Sort.CorrectnessTest do
  use ExUnit.Case, async: true

  setup do
    %{impls: [Algo.BubbleSort, Algo.InsertionSort, Algo.SelectionSort]}
  end

  test "empty list", %{impls: impls} do
    for i <- impls do
      assert i.sort([]) == [], i.name()
    end
  end

  test "one element list", %{impls: impls} do
    for i <- impls do
      assert i.sort([1]) == [1], i.name()
    end
  end

  test "presorted list", %{impls: impls} do
    for i <- impls do
      assert i.sort([1, 2, 3]) == [1, 2, 3], i.name()
    end
  end

  test "unsorted list", %{impls: impls} do
    for i <- impls do
      assert i.sort([3, 2, 1]) == [1, 2, 3], i.name()
    end
  end

  test "unsorted list w/ repeats", %{impls: impls} do
    for i <- impls do
      assert i.sort([3, 2, 1, 2]) == [1, 2, 2, 3], i.name()
    end
  end

  test "large presorted list", %{impls: impls} do
    for i <- impls do
      list = Enum.to_list(1..1000)
      assert i.sort(list) == list, i.name()
    end
  end

  # sort predictably too slow to make list too big
  test "large unsorted list", %{impls: impls} do
    for i <- impls do
      sorted = Enum.to_list(1..1000)
      unsorted = Enum.shuffle(sorted)

      assert i.sort(unsorted) == sorted, i.name()
    end
  end
end
