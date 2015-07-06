defmodule Max do
  def max([head | tail]), do: _max(tail, head)

  defp _max([], best), do: best
  defp _max([head | tail], best) when head > best, do: _max(tail, head)
  defp _max([_ | tail], best), do: _max(tail, best)
end
