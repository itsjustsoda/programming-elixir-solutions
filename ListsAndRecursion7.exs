defmodule MyList do
  def span(to, to), do: [to]
  def span(from, to), do: [from | span(from + 1, to)]

  def primes(n) do 
    for x <- span(2, n), 
        not Enum.any?(span(2, max(2, x - 1)), &(x != &1 and rem(x, &1) == 0)),
    do: x
  end
end
