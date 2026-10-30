//quando vai ter um de jojo? HxH é bom(segundo meu amigo, nunca vi), mas jojo é jojo, e tá lançando SBR
class UsuarioDeNen {
  constructor(nome) {
    this.nome = nome;
  }
  atacar(alvo) {
    console.log(`${this.nome} lança um ataque genérico de nen contra ${alvo.nome}!`);
  }
}
class Intensificador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} intensifica seu nen e soca muitititissimo forte em ${alvo.nome}!`);
  }
}
class Transmutador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} transmuda seu nen em eletricidade e ataca ${alvo.nome} com um raio!`);
  }
}
class Materializador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} materializa uma corrente de nen e prende ${alvo.nome}!`);
  }
}
class Aranha {
  constructor(nome, numero) {
    this.nome = nome;
    this.numero = numero;
  }
}
class TrupeFantasma {
  #aranhas;
  constructor(cidade, aranhas = []) {
    this.cidade = cidade;
    this.#aranhas = aranhas;
  }
  revelarAranhas() {
    console.log(`\nTrupe Fantasma avistada em ${this.cidade}`);
    this.#aranhas.forEach(aranha => {
      console.log(`Nº ${aranha.numero} - ${aranha.nome}`);
    });
  }
  buscarAranha(numero) {
    return this.#aranhas.find(aranha => aranha.numero === numero);
  }
}

const hisoka = new Aranha("Hisoka", 4);
const paidomlk = new Aranha("Pai do gon", 0);
const trupe = new TrupeFantasma("Trio Jokenpo", [hisoka, paidomlk]);
trupe.revelarAranhas();
const alvo = trupe.buscarAranha(4);
console.log(`\nAlvo escolhido: ${alvo.nome}`);
const hunters = [
  new Intensificador("Gon"),
  new Transmutador("Killua"),
  new Materializador("Kurapika")
];
console.log("\nHunters atacando");
hunters.forEach(hunter => {
  hunter.atacar(alvo);
});
