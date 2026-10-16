class HeroiOverwatch:
    def __init__(self,codinome,funcao):
        self.codinome = codinome
        self.funcao = funcao
    def usar_suprema(self):
        print(f"{self.codinome} usou suprema: Altas horas!")   #its high noon == é altas horas
class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} usou suprema de tanque: Cair matando!")
class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} usou suprema de suporte: Barreira de som!")
    def curar_equipe(self):
        print(f"{self.codinome} está curando a sua equipe!")
if __name__ == "__main__":
    herois: list[HeroiOverwatch] = [ HeroiOverwatch("Cassidy", "Dano"), HeroiTanque("Roadhog", "Tanque"), HeroiSuporte("Lúcio", "Suporte")]
    for heroi in herois:
        heroi.usar_suprema()
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()
