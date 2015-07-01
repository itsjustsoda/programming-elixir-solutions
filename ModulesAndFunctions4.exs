defmodule Sum do
  def sum(1), do: 1
  def sum(n) do
    cond do
      n < 1 ->
        sum(n + 1) + n
      n > 1 ->
        sum(n - 1) + n
    end
  end
end
