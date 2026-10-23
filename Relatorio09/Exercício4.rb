module Depoente
    def depor
      raise NotImplementedError, "Este envolvido ainda não prestou depoimento!"
    end
  end
  module Detivel
    def ser_detido
      puts "#{nome} foi levado pela Scotland Yard." #tenho o jogo de tabuleiro, é divertido, mas tem um mistério que me deixou com muita raiva. É sobre os sosias do elvis presley. A resposta oficial para o mistério é que o Elvis é um alien e ele voltou para o planeta natal dele
    end
  end
  class Envolvido
    attr_reader :nome
    def initialize(nome)
      @nome = nome
    end
  end
  class TestemunhaOcular < Envolvido
    include Depoente
    def depor
      puts "#{@nome}: 'Eu vi Cristo ser crucificado
      O amor nascer e ser assassinado
      Eu vi as bruxas pegando fogo
      Pra pagarem seus pecados
      Eu vi!
      Eu vi Moisés cruzar o mar vermelho
      Vi Maomé cair na terra de joelhos
      Eu vi Pedro negar Cristo por três vezes
      Diante do espelho
      Eu vi!'"
    end
  end
  class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel
    def depor
      puts "#{@nome}: 'Eu tava junto com os macacos na caverna
      Eu bebi vinho com as mulheres na taberna'"
    end
  end
  class Investigacao
    def initialize(caso)
      @caso = caso
      @envolvidos = []
    end
    def registrar(envolvido)
      @envolvidos << envolvido
    end
    def ouvir_todos
      puts "Investigação do caso: #{@caso}"
      @envolvidos.each do |envolvido|
        envolvido.depor
      end
    end
    def acionar_scotland_yard
      puts "\nScotland Yard em ação"
      detiveis = @envolvidos.select { |e| e.respond_to?(:ser_detido) }
      detiveis.each do |suspeito|
        suspeito.ser_detido
      end
    end
  end
  testemunha = TestemunhaOcular.new("Velho da praça")
  suspeito1 = SuspeitoDoCrime.new("Cartola")
  suspeito2 = SuspeitoDoCrime.new("Villa-Lobos")
  caso = Investigacao.new("Quem nasceu a 10 mil anos atras?")
  caso.registrar(testemunha)
  caso.registrar(suspeito1)
  caso.registrar(suspeito2)
  caso.ouvir_todos
  caso.acionar_scotland_yard
