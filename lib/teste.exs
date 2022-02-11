defmodule Teste do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias Teste.Math, as: MyMath

  require Integer

  def ola_mundo do
    inspect(MyMath.soma(2,2))
  end

  def exibe_se_e_par(numero) do
    puts("O numero #{numero} e par? #{Integer.is_even(numero)}")
  end

  def inspect(parametro) do
    puts("Comecando a inspecao")
    puts(parametro)
    puts("Terminando a inspecao")
  end
end
