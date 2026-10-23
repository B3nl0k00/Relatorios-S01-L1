class PhoneWave
    def enviar_dmail(mensagem)
      puts "HotMail: \"#{mensagem}\""
      puts "Mensagem enviada para o passado!"
    end
  end
  class MembroDoLab
    attr_reader :numero, :nome
    def initialize(numero, nome)
      @numero = numero
      @nome = nome
    end
  end
  class LaboratorioDeGadgets
    def initialize
      @phonewave = PhoneWave.new
      @membros = []
    end
    def admitir(membro)
      @membros << membro
      puts "Lab Mem #{membro.numero} - #{membro.nome} foi admitido no laboratório!"
    end
    def experimento(mensagem)
      puts "\nIniciando experimento"
      @membros.each do |membro|
        puts "Presente: Lab Mem #{membro.numero} - #{membro.nome}"
      end
      @phonewave.enviar_mail(mensagem)
    end
  end
  agenteK = MembroDoLab.new("011", "Tommy Lee")#nunca vi steins gate, mas já vi MIB, deve ser parecido
  agenteJ = MembroDoLab.new("010", "Will Smith")
  lab = LaboratorioDeGadgets.new
  lab.admitir(agenteK)
  lab.admitir(agenteJ)
  lab.experimento("Cinturão de Orion")
  # COMPOSIÇÃO: O PhoneWave é criado dentro do LaboratorioDeGadgets (em initialize) e só existe enquanto o laboratório existir. Ele faz parte do laboratório e não tem vida própria fora dele.
  # AGREGAÇÃO: Os MembroDoLab são criados fora do laboratório e existem independentemente. O laboratório apenas os referencia (adiciona ao array), mas eles continuam existindo mesmo se o laboratório deixar de existir.
