defmodule MyList do
  def flatten(list), do: list |> flatten_([]) |> Enum.reverse

  defp flatten_([], flat), do: flat
  defp flatten_([head | tail], flat) when is_list(head), do: flatten_(tail, flatten_(head, flat))
  defp flatten_([head | tail], flat), do: flatten_(tail, [head | flat])
end
