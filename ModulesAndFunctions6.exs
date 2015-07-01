defmodule Guess do
  def guess(n, a..b) do
    guess(n, a, b, center(a, b))
  end

  def guess(n, a, b, guess) when guess > n do
    IO.puts "Is it #{guess}"
    guess(n, a, guess, center(a, guess))
  end

  def guess(n, a, b, guess) when guess < n do
    IO.puts "Is it #{guess}"
    guess(n, guess, b, center(guess, b))
  end

  def guess(n, a, b, guess) when guess == n do
    guess 
  end

  defp center(a, b), do: div(a + b, 2)
end
