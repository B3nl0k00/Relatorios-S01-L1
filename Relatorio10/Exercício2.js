// não jogo valorant e não gosto de valorant, então todas as referencias serão a tf2
class Pistola {
  constructor(modelo) {
    this.modelo = modelo;
  }
}
class AgenteProtocolo {
  #pistola;
  constructor(codinome, modeloDaPistola) {
    this.codinome = codinome;
    this.#pistola = new Pistola(modeloDaPistola);
  }
  usarHabilidade() {
    throw new Error("Classe sem habilidade especial");//em tf2
    // somente o sniper não tem nada especial, todas as 8 classes fazem algo
}
  entrarEmCombate() {
    console.log(
      `${this.codinome} esta lutando com a ${this.#pistola.modelo} e usa: ${this.usarHabilidade()}`
    );
  }
}
class Controlador extends AgenteProtocolo {
  usarHabilidade() {
    return "Conchistador(velocidade e vida para o time)";
  }
}
class Iniciador extends AgenteProtocolo {
  usarHabilidade() {
    return "Teleporter(viagem rapida para o ponto)";
  }
}
class Duelista extends AgenteProtocolo {
  usarHabilidade() {
    return "Charge(corrida rápida até o inimigo)";
  }
}
class Esquadrao {
  #agentes;
  constructor(nome, agentes) {
    this.nome = nome;
    this.#agentes = agentes;
  }
  iniciarPartida() {
    console.log(`\nEsquadrão ${this.nome} iniciando a partida`);
    this.#agentes.forEach(agente => agente.entrarEmCombate());
  }
  listarControladores() {
    return this.#agentes.filter(agente => agente instanceof Controlador);
  }
}

const medic = new Controlador("Medic", "Krietzkrieg");
const soldier = new Controlador("Soldier", "Original");
const engineer = new Iniciador("Engineer", "Widowmaker");
const demoknight = new Duelista("Demoknight", "Persian Persuader");
const esquadrao = new Esquadrao("Protocolo Alpha", [medic, soldier, engineer, demoknight]);
esquadrao.iniciarPartida();
console.log("\nControladores do esquadrão");
esquadrao.listarControladores().forEach(agente => {
  console.log(agente.codinome);
});
const classeGenerica = new AgenteProtocolo("Saxton Hale", "Punhos");
//classeGenerica.entrarEmCombate(); ele não possui classe definida, entao não tem habilidade
