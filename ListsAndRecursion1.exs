defmodule MapSum do
  def mapsum([], _), do: 0
  def mapsum([head | tail], func), do: mapsum(tail, func) + func.(head)
end
