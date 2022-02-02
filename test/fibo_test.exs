defmodule Algo.FiboTest do
  use ExUnit.Case, async: true
  alias Algo.Fib, as: F

  test "fibo_correctness" do
    assert F.fibo(0) == 0
    assert F.fibo(1) == 1
    assert F.fibo(2) == 1
    assert F.fibo(3) == 2
    assert F.fibo(4) == 3
  end

  test "fib with memo correctness" do
    assert F.fibom(0) == 0
    assert F.fibom(1) == 1
    assert F.fibom(2) == 1
    assert F.fibom(3) == 2
    assert F.fibom(4) == 3
  end

  test "fibo perf" do
    Benchee.run(%{fibo_test: &buncha_fibs/0, fibm_test: &funcha_bibs/0})
  end

  def buncha_fibs do
    for i <- 1..40 do
      F.fibo(i)
    end
  end

  def funcha_bibs do
    for i <- 1..40 do
      F.fibom(i)
    end
  end
end
