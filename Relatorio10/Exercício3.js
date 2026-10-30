//tenho o diario 3, é bem legal
class FichaDeCriatura {
  constructor(criatura, nivelDePerigo) {
    this.criatura = criatura;
    this.nivelDePerigo = nivelDePerigo;
  }
  descrever() {
    return `${this.criatura} - Nível de perigo: ${this.nivelDePerigo}`;
  }
}
class DiarioMisterioso {
  #fichas = [];
  constructor(numero) {
    this.numero = numero;
  }
  anotar(criatura, nivelDePerigo) {
    const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
    this.#fichas.push(ficha);
  }
  exibirFichas() {
    console.log(`\nDiário nº ${this.numero}`);
    this.#fichas.forEach(ficha => {
      console.log(ficha.descrever());
    });
  }
}
class Funcionario {
  constructor(nome, cargo) {
    this.nome = nome;
    this.cargo = cargo;
  }
}
class CabanaDoMisterio {
  #funcionarios = [];
  constructor(dono) {
    this.dono = dono;
  }
  contratar(funcionario) {
    this.#funcionarios.push(funcionario);
  }
  abrirAsPortas() {
    console.log(`\nCabana do Mistério - Dono: ${this.dono}`);
    this.#funcionarios.forEach(func => {
      console.log(`${func.nome} - ${func.cargo}`);
    });
  }
}

const diario = new DiarioMisterioso(3);
diario.anotar("Gnomos", "Baixo");
diario.anotar("Abobora com rosto humano e emoçoes", "Médio");
diario.anotar("Bill Cipher", "Extremo");
diario.exibirFichas();
const soos = new Funcionario("Soos Ramirez", "Faxineiro / Gerente");
const wendy = new Funcionario("Wendy Corduroy", "Atendente");
const cabana = new CabanaDoMisterio("Stanley Pines");
cabana.contratar(soos);
cabana.contratar(wendy);
cabana.abrirAsPortas();
//agregação: é adicionado ao programa depois, como os funcionarios, criados fora da cabana
//composição: é parte base, dentro dos metodos, ficha de criatura é dentro do diario
