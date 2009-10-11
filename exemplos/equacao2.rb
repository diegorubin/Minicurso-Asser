# Exemplo Classe Equacao2
# Classe que abstrai as propriedades de uma equacao do segundo grau.
# Quando instanciado a classe necessita dos argumentos a,b,c para ser uma equacao do segundo grau completa.
class Equacao2
    # Cria os metodos set e get dos atributos @a,@b,@c
    attr_accessor :a,:b,:c
    def initialize(a,b,c)
	@a = a
	@b = b
	@c = c
    end
    # Metodo que encontra as raizes da equacao.
    # => array com a solucao
    def resolver
	delta = Math.sqrt((@b * @b - 4 * @a * @c).to_f)
	x1 = (-@b + delta)/(2 * @a)		
	x2 = (-@b - delta)/(2 * @a)		
	return [x1,x2]
    end
end

