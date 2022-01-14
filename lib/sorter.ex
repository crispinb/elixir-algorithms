defmodule Algo.Sorter do
  @callback sort(list(any)) :: list(any)
  @callback name() :: String.t()
end
