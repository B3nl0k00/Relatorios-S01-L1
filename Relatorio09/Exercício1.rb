class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Nome: #{@nome} | Preço: #{@_preco} Eurodolares"
  end
end
class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} | Lenda homenageada: #{@lenda}"
  end
end
drinks = [
  CoquetelAfterlife.new("Afterlife Classic", 35),
  DrinkDeLenda.new("Detona atomo", 120, "Adam Smasher"),
  DrinkDeLenda.new("O corredor", 95, "David Martinez")
]
puts "Cardápio"
drinks.each do |drink|
  puts drink.ficha
end
drinks[1].preco = 500
puts drinks[1].ficha
drinks[1].preco = 80
puts drinks[1].ficha
puts drinks[0].ficha
puts drinks[1].ficha
puts drinks[2].ficha
#drinks[0].nome = "Novo Nome"      nn deu, não encontrou metodo
