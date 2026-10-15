class MortoVivo:
    def __init__(self, nome, almas, estus):
        self.nome = nome
        self._almas = almas
        self.__estus = estus
    def get_estus(self):
        return self.__estus
    def set_estus(self, quantidade):
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus inválida!")
    def mostrar_status(self):
        return f"Mortovivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"
class Clerigo(MortoVivo):
    def __init__(self, nome, almas, estus, milagre):
        super().__init__(nome, almas, estus)
        self.milagre = milagre
    def mostrar_status(self):
        return f"{super().mostrar_status()} | Milagre: {self.milagre}"
if __name__ == "__main__":
    plimplimploinplim = Clerigo("Monge", 234, 4, "cura fraca")
    print(plimplimploinplim.mostrar_status())
    plimplimploinplim.set_estus(15)
    plimplimploinplim.set_estus(10)
    print(plimplimploinplim.mostrar_status())
    #print(plimplimploinplim.__estus) Erro: Clerigo não tem atributo __estus, visto que é privado de morto vivo
