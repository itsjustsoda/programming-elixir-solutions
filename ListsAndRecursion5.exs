defmodule MyEnum do
  def all?([], _), do: true
  def all?([head | tail], func), do: func.(head) and all?(tail, func)


  def each([], _), do: :ok 
  def each([head | tail], func) do 
    func.(head)
    each(tail, func)
  end


  def filter([], _), do: []
  def filter([head | tail], predicate) do
    if predicate.(head) do
      [head | filter(tail, predicate)]
    else
      filter(tail, predicate)
    end
  end


  def split(list, n) when n >= 0, do: {split_head(list, n), split_tail(list, n)}
  def split(list, n) do 
    {list |> reverse |> split_tail(-n) |> reverse, list |> reverse |> split_head(-n) |> reverse}
  end

  defp split_head([], _), do: []
  defp split_head(_, 0), do: []
  defp split_head([head | tail], n), do: [head | split_head(tail, n - 1)]

  defp split_tail([], _), do: []
  defp split_tail(list, 0), do: list
  defp split_tail([_ | tail], n), do: split_tail(tail, n - 1)

  defp reverse([]), do: []
  defp reverse([head | tail]), do: reverse(tail) ++ [head]


  def take([], _), do: []
  def take(_, 0), do: []
  def take([head | tail], n) when n > 0, do: [head | take(tail, n - 1)]
  def take(list, n),  do: list |> reverse |> take(-n) |> reverse
end
