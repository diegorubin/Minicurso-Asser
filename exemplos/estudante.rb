# Classe Pessoa
class Pessoa
  attr_accessor :nome, :telefone, :endereco
end

# Modulo Estagiario
module Estagiario
  attr :tarefas
  def caroca
    @taferas = ["trocar agua",
              "limpar notebook do batatinha(o chefe)",
                "correr atras do cachorro da chefa"]
    puts "O estagiario deve fazer:"
    @taferas.each {|tarefa| puts tarefa}
  end
end

# Declaracao de Mixin
# Ele tera os atributos de Pessoa e metodos de Estagiario
class Estudante < Pessoa
  attr_accessor :ra, :curso
  include Estagiario
end

