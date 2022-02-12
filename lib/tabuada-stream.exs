defmodule Teste.Tabuada do

  require Integer

  def calcula(multiplicador) do
    1..1_000_000 |> Stream.map(&(&1 * multiplicador)) |> Stream.filter(&Integer.is_even(&1)) |> Enum.sum()
  end

end