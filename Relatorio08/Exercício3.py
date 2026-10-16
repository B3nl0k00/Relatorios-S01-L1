class Persona:
    def __init__(self, nome, arcano):
        self.nome = nome
        self.arcano = arcano
    def invocar(self):
        print(f"{self.nome} invocada, seu arcano é: {self.arcano}\n")
class Aliado:
    def __init__(self, nome, codinome):
        self.nome = nome
        self.codinome = codinome
class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco") #O louco, carta 0 do tarot, mesma do iggy
        self._equipe = []
    def recrutar(self, aliado:Aliado):
        self._equipe.append(aliado)
        print(f"{aliado.codinome} ({aliado.nome}) foi recrutado(a) pelos Phantom Thieves")
    def infiltrar(self, chefao: str):
        print(f"\nInflitrando o palácio de {chefao}!\n Líder: {self.codinome}")
        self.persona.invocar()
        print("Equipe:")
        for membro in self._equipe:
            print(f"  - {membro.codinome} ({membro.nome})")
if __name__ == "__main__":
    ryuji = Aliado("Ryuji", "Skull") #Carruagem, carta 7, mesma de Jean Pierre Polnareff 
    ann = Aliado("Ann", "Panther") #Os Amantes, carta 6, mesma do Stealy dan
    joker = Lider("Joker")
    joker.recrutar(ryuji)
    joker.recrutar(ann)
    joker.infiltrar("Kamoshida")
    #Composição: Persona Arsène, só existe em lider e depende para existir
    #Agregação: Aliados, são criados fora de lider, sendo adicionados apenas a lista de aliados em lider, podendo existir sem lider
