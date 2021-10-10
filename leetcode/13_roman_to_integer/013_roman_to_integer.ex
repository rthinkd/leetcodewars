defmodule Solution do
  @roman %{
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }

  @spec roman_to_int(s :: String.t()) :: integer
  def roman_to_int(s) do
    s
    |> convert_to_numbers
    |> calc_roman(0)
  end

  def convert_to_numbers(s) do
    String.split(s, "", trim: true)
    |> Enum.map(&@roman[String.to_atom(&1)])
  end

  def calc_roman([], sum), do: sum
  def calc_roman([el], sum), do: sum + el

  def calc_roman([first, second | tail], sum) do
    cond do
      first >= second ->
        calc_roman([second | tail], sum + first)

      true ->
        calc_roman(tail, sum + (second - first))
    end
  end
end
