defmodule Teste.Arquivos do
  def simple_read(arquivo) do
    File.read!(arquivo)
  end

  def generic_read(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error,_} -> "Aconteceu algum erro"
    end
  end

  def specific_read(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "Arquivo inexistente"
      {:error, :eacces} -> "Arquivo sem permissao de leitura"
      {:error,_} -> "Erro desconhecido"
    end
  end

  def write(arquivo) do
    File.write(arquivo, "Conteudo do arquivo")
  end

  def open(file_path) do
    case File.open(file_path, [:write, :utf8]) do
      {:ok, file} -> write_with_io(file)
      {:error,_} -> "Erro ao tentar abrir arquivo."
    end
  end

  defp write_with_io(file) do
    case IO.write(file, "Escrevendo pela terceira vez") do
      :ok -> close_file(file)
      :error -> "Erro ao escrever arquivo"
    end
  end

  defp close_file(file) do
    case File.close(file) do
      :ok -> "Arquivo criado."
      :error -> "Erro ao fechar arquivo."
    end
  end

end