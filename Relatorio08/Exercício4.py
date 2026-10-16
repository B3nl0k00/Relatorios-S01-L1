from abc import ABC, abstractmethod
from typing import List
class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass
class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo
class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, modelo_cyberdeck: str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)
    def executar_invasao(self):
        print(f"  - Netrunner {self.nome} usando {self.cyberdeck.modelo} está quebrando o gelo (ICE) de um servidor!")
class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: str):
        self.codigo = codigo
    def executar_invasao(self):
        print(f"  - Drone {self.codigo} está interceptando o sinal da rede!")
class CelulaHacker:
    def __init__(self, nome: str, membros: List[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros
    def iniciar_ataque(self):
        print(f"\nCélula '{self.nome}' iniciando ataque coordenado")
        for unidade in self.membros:
            unidade.executar_invasao()
if __name__ == "__main__":
    netrunner = OperadorNetrunner("David Marinez", "Mark 3")
    drone = DroneDeVigilancia("DSGA-23")
    celula = CelulaHacker("Edgerunners", [netrunner, drone])
    celula.iniciar_ataque()
    #unidade = IUnidadeDeRede()
    #não consegue iniciar sem implementação para o metodo abstrato executar_invasao
