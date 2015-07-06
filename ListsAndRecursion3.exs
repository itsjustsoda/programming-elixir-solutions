defmodule Ceasar do
  def ceasar([], _), do: []
  def ceasar([head | tail], n), do: [rot(n, head) | ceasar(tail, n)]

  defp rot(n, code) when code >= 0x41 and code <= 0x5A do
    rem((code + n - 0x41), 26) + 0x41
  end

  defp rot(n, code) when code >= 0x61 and code <= 0x7A do
    rot(n, code - 0x20) + 0x20
  end

  defp rot(_, code), do: code
end
