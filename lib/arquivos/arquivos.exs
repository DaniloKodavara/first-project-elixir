defmodule Teste.Arquivos do
  def ler(arquivo) do
    File.read!(arquivo)
  end

  def ler2(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error,_} -> "Aconteceu algum erro"
    end
  end

end