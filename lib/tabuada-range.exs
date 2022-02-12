defmodule Teste.Tabuada do

  def calcula(multiplo) when (is_integer(multiplo)) do
    Enum.map(1..10, &(&1 * multiplo))
  end

end