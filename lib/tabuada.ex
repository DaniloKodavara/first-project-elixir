defmodule Teste.Tabuada do

  def calcula(multiplicador) when(is_integer(multiplicador)) do
    tabuada(multiplicador, 1)
  end

  defp tabuada(p1, 11), do: []

  defp tabuada(p1, p2) do
    [p1 * p2] ++ tabuada(p1, p2 + 1)
  end

end
