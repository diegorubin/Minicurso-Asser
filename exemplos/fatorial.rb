# Exemplo 1
# Calcula o fatorial de um numero de forma recursiva.
# Este e em bom exemplo do poder do ruby, por nao utilizar tipo primitivos, e possivel alcancar resultados mais facilmente do que em outras linguagens, tipo pascal ou c. 
def fatorial(n)
    if(n > 1)
        n * fatorial(n-1)
    else
        1
    end
end
# Chama o metodo fatorial e passa como argumento o primeiro argumento passado na chamada da rotina por linha de comando.
puts fatorial(ARGV[0].to_i)
