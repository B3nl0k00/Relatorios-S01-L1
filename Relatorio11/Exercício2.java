import java.util.ArrayList;
class ItemDoCardapio {
    private String nome;
    private double preco;
    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }
    public String getNome() {
        return nome;
    }
    public double getPreco() {
        return preco;
    }
    public double precoFinal() {
        return preco;
    }
}
class ComboLeblanc extends ItemDoCardapio {
    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }
    @Override
    public double precoFinal() {
        return getPreco() * 0.9;
    }
}
class CafeLeblanc {
    private ArrayList<ItemDoCardapio> cardapio;
    public CafeLeblanc() {
        this.cardapio = new ArrayList<>();
    }
    public void adicionar(ItemDoCardapio item) {
        cardapio.add(item);
    }
    public void mostrarCardapio() {
        System.out.println("Cardápio do Leblanc:");//Sojiro Sakura é legal
        for (ItemDoCardapio item : cardapio) {
            System.out.printf("%s - R$ %.2f%n", item.getNome(), item.precoFinal());
        }
    }
}
public class Leblanc {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Café coado na hora", 8.50);
        ItemDoCardapio paodequeijo = new ItemDoCardapio("Pão de queijo", 18.00);
        ComboLeblanc combo = new ComboLeblanc("Combo Café + Pão de queijo", 26.50);
        CafeLeblanc leblanc = new CafeLeblanc();
        leblanc.adicionar(cafe);
        leblanc.adicionar(paodequeijo);
        leblanc.adicionar(combo);
        leblanc.mostrarCardapio();
    }
}
