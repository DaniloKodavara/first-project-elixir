defmodule Teste.Tabuada do

  require Integer

  def calcula(multiplo) when (is_integer(multiplo)) do
    Enum.map(1..10, &(&1 * multiplo))
  end

  def calculaPar(multiplo) when (is_integer(multiplo)) do
    tabuadaList = Enum.map(1..10, &(&1 * multiplo))
    Enum.filter(tabuadaList, &Integer.is_even(&1))
  end

  def calculaSoma(multiplo) when (is_integer(multiplo)) do
    1..10 |> Enum.map(&(&1 * multiplo)) |> Enum.filter(&Integer.is_even(&1)) |> Enum.sum()
  end

end