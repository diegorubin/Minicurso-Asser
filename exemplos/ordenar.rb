# Abre um arquivo e ordena seu conteudo colocando
# o resultado em outro arquivo.
arq_novo = File.open("lista_ordenada.txt", "w")
File.open("lista.txt").sort.each do |nome|
  arq_novo.puts nome
end

