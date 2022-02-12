defmodule Teste.Tabuada do

  def calcula(multiplicador) do
    tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, valores), do: valores

  defp tabuada(p1, p2, valores) do
    tabuada(p1, p2 + 1, valores ++ [p1 * p2])
  end

end