defmodule Teste.Concat do

  def join(a, b \\ nil, c \\ " ")

  def join(a, b, _c) when is_nil(b) do
    a
  end

  def join(a, b, c) do
    a <> c <> b
  end


end