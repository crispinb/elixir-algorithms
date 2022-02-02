defmodule Algo.Fib do
  def fibo(0), do: 0
  def fibo(1), do: 1

  def fibo(n) do
    fibo(n - 1) + fibo(n - 2)
  end

  def fibom(n) do
    {n, _} = fibom(n, %{})
    n
  end

  def fibom(n, %{} = cache) do
    case n do
      x when x == 0 or x == 1 ->
        {x, cache}

      n ->
        cache =
          if Map.has_key?(cache, n) do
            cache
          else
            {subfib1, cache} = fibom(n - 1, cache)
            {subfib2, cache} = fibom(n - 2, cache)
            Map.put(cache, n, subfib1 + subfib2)
          end

        {cache[n], cache}
    end
  end

end
