defmodule Teste.Calendario do

  def abreviacao(dia) do
    case dia do
      :Segunda -> "Seg"
      :Terca -> "Ter"
      :Quarta -> "Qua"
      :Quinta -> "Qui"
      :Sexta -> "Sex"
      _ -> "Dia Invalido"
    end
  end

  def abreviacao2(dia) do
    cond do
      dia == :Segunda -> "Seg"
      dia == :Terca -> "Ter"
      dia == :Quarta -> "Qua"
      dia == :Quinta -> "Qui"
      dia == :Sexta -> "Sex"
      true -> "Dia Invalido"
    end
  end

  def abreviacao3(:Segunda), do: "Seg"
  def abreviacao3(:Terca), do: "Ter"
  def abreviacao3(:Quarta), do: "Qua"
  def abreviacao3(:Quinta), do: "Qui"
  def abreviacao3(:Sexta), do: "Sex"
  def abreviacao3(_), do: "Dia invalido"

end