defmodule Teste.Loop do

  def tabuada(multiplicador) do
    tabuada(multiplicador, 10, [])
  end

  defp tabuada(_, 0, lista), do: lista
  defp tabuada(p1, p2, lista) do
    multiplicacao = p1 * p2
    lista = [multiplicacao | lista]
    tabuada(p1, p2 - 1, lista)
  end

end