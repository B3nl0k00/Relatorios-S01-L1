class Pokemon {
  #vida;
  constructor(apelido, tipo, vidaInicial) {
    this.apelido = apelido;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }
  get vida() {
    return this.#vida;
  }
  sofrerDano(pontos) {
    this.#vida = Math.max(0, this.#vida - pontos);
    console.log(`${this.apelido} sofreu dano! Vida restante: ${this.#vida}`);
  }
  atacar(alvo) {
    console.log(`${this.apelido} atacou ${alvo.apelido} com um golpe genérico!`);
    alvo.sofrerDano(10);
  }
}
class Squirtle extends Pokemon {
  constructor(apelido, vidaInicial) {
    super(apelido, "Água", vidaInicial);
  }
  atacar(alvo) {
    console.log(`${this.apelido} usou Rajada de Bolhas em ${alvo.apelido}!`);
    alvo.sofrerDano(20);
  }
}
class Bulbasaur extends Pokemon {
  constructor(apelido, vidaInicial) {
    super(apelido, "Planta", vidaInicial);
  }
  atacar(alvo) {
    console.log(`${this.apelido} usou Folhas de Navalha em ${alvo.apelido}!`);
    alvo.sofrerDano(15);
  }
}

const squirtle = new Squirtle("Joseph Joestar", 34);
const bulbasaur = new Bulbasaur("Jotaro Kujo", 30);
console.log("Batalha Inicia");
bulbasaur.atacar(squirtle);
squirtle.atacar(bulbasaur);
squirtle.atacar(bulbasaur);
console.log("\nVida depois da batalha");
console.log(`${squirtle.apelido}: ${squirtle.vida}`);
console.log(`${bulbasaur.apelido}: ${bulbasaur.vida}`);
//console.log(squirtle.#vida); não pode porque #vida tem que estar declarado dentro de uma classe fechada
