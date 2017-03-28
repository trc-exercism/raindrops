defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
  just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    _number(number,
      _eval(number, 3, "Pling") <>
      _eval(number, 5, "Plang") <>
      _eval(number, 7, "Plong"))
  end

  defp _number(number, ""), do: to_string(number)
  defp _number(_number, str), do: str
  defp _eval(num, val, word) do
    cond do
      rem(num, val) == 0 -> word
      true -> ""
    end
  end
end
