class Instrumentista
    attr_reader :nome, :instrumento
    def initialize(nome, instrumento)
      @nome = nome
      @instrumento = instrumento
    end
    def interpretar(peca)
      raise NotImplementedError, "Ruim demais, substitui o lars que da mais certo"
    end
  end
  class Solista < Instrumentista
    def interpretar(peca)
      puts "#{@nome} no #{@instrumento} conduz a melodia principal de '#{peca}'."
    end
  end
  class Acompanhador < Instrumentista
    def interpretar(peca)
      puts "#{@nome} no #{@instrumento} acompanha o ritmo do solista em '#{peca}'."
    end
  end
  class Regente
    def initialize(nome)
      @nome = nome
      @orquestra = []
    end
    def convocar(instrumentista)
      @orquestra << instrumentista
    end
    def reger(peca)
      puts "O regente #{@nome} inicia a apresentação de '#{peca}'!"
      @orquestra.each do |instrumentista|
        instrumentista.interpretar(peca)
      end
    end
    def escalacao
      @orquestra.map do |instrumentista|
        "#{instrumentista.class}: #{instrumentista.nome}"
      end
    end
  end
  solista = Solista.new("Dave Mustaine", "guitarra")
  acompanhador = Acompanhador.new("James Hetfield", "vocais")
  regente = Regente.new("Maestro Takeshi")
  regente.convocar(solista)
  regente.convocar(acompanhador)
  regente.reger("Chopin's Ballade No. 1")
  
  puts "\nEscalações"
  regente.escalacao.each do |texto|
    puts texto
  end
  instrumentista_generico = Instrumentista.new("Músico Desconhecido", "Baixo")
  # instrumentista_generico.interpretar("Alguma peça")    nn da certo, não encontra nada implementado
