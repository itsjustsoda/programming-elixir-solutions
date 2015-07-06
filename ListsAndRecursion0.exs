defmodule MyList do
  def sum([]), do: 0
  def sum([_ | tail]), do: sum(tail) + 1
end
