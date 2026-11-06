import java.util.ArrayList;
abstract class Monstro {
    private String nome;
    public Monstro(String nome) {
        this.nome = nome;
    }
    public String getNome() {
        return nome;
    }
    public abstract String receita();
}
class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }
    @Override
    public String receita() {
        return "Cozinhe em fogo baixo até ficar verde e sirva como sopa gelatinosa.";
    }
}
class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }
    @Override
    public String receita() {
        return "Ferva bem para neutralizar o grito, depois tempere e frite até dourar.";
    }
}
class Panela {
    private String material;
    public Panela(String material) {
        this.material = material;
    }
    public String getMaterial() {
        return material;
    }
}
class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;
    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }
    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }
    public void servirBanquete() {
        System.out.println("Banquete do " + nome);
        System.out.println("Preparando na panela de " + panela.getMaterial() + "...\n");
        for (Monstro monstro : ingredientes) {
            System.out.println("- " + monstro.getNome() + ": " + monstro.receita());
        }
    }
}
public class DungeonMeshi {
    public static void main(String[] args) {
        Slime slimeAzul = new Slime("Slime Azul");
        Mandragora mandragora = new Mandragora("Mandragora Gritante");
        Cozinheiro senshi = new Cozinheiro("Senshi", "ferro fundido");
        senshi.adicionarIngrediente(slimeAzul);
        senshi.adicionarIngrediente(mandragora);
        senshi.servirBanquete();
    }
}
//agregação: monstros existem sem o cozinheiro, idependente dele.
//composição: panelas é criada dentro do Cozinheiro e só existe enquanto ele existir
