abstract class Morador {
    private String nome;
    public Morador(String nome) {
        this.nome = nome;
    }
    public String getNome() {
        return nome;
    }
    public abstract void apresentar();
}
class Mago extends Morador {
    private String feitico;
    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }
    @Override
    public void apresentar() {
        System.out.println("Sou " + getNome() + ", um mago, e meu feitiço é: " + feitico);
    }
}
class DemonioDoFogo extends Morador {
    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou " + getNome() + ", o demônio do fogo, e eu faço o castelo andar!");
    }
}
public class CasteloAnimado {
    public static void main(String[] args) {
        Morador dragonborn = new Mago("Dragonborn", "Grito");
        Morador nazeem = new DemonioDoFogo("Nazeem");
        dragonborn.apresentar();
        nazeem.apresentar();
        //Morador generico = new Morador("Alguém"); não da pq morador é asbrato, por isso não da pra instanciar
    }
}
