# Exemplo Classe Equacao2
# Classe que abstrai as propriedades de uma equacao do segundo grau.
# Quando instanciado a classe necessita
# dos argumentos a,b,c para ser uma equacao do segundo grau completa.
class Equacao2
  attr_accessor :a,:b,:c
  # Metodo de instanciação.
  # Este metodo e chamado em Equacao2.new
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  # Metodo que passa os valores por Hash
  # Esta forma e muito utilizado no rails
  # Exemplo: equacao.set_por_hash
  def set_por_hash(arg)
    # atualiza o valor se o existe o atributo no dicionario.
    @a = arg[:a] if not arg[:a].nil?
    @b = arg[:b] if not arg[:b].nil?
    @c = arg[:c] if not arg[:c].nil?
  end
  # Metodo que encontra as raizes da equacao.
  # => array com a solucao
  def resolver
    begin
      delta = Math.sqrt((@b * @b - 4 * @a * @c).to_f)
      x1 = (-@b + delta)/(2 * @a)
      x2 = (-@b - delta)/(2 * @a)
      return [x1,x2]
    rescue
      return false
    end
  end
end

