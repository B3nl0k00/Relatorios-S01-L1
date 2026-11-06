import java.util.HashMap;
interface Sobrenatural {
    void manifestar();
}
class Alienigena implements Sobrenatural {
    private String nome;
    public Alienigena(String nome) {
        this.nome = nome;
    }
    @Override
    public void manifestar() {
        System.out.println(nome + " aparece! Metamorfose ambulante, virando um par de sapatos e dados!");
    }
}
class EspiritoYoukai implements Sobrenatural {
    private String nome;
    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }
    @Override
    public void manifestar() {
        System.out.println(nome + " se manifesta! Virou um vampiro com a mascara de pedra!");
    }
}
class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;
    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }
    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }
    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);
        if (ser == null) {
            System.out.println("O local \"" + local + "\" está tranquilo. Nada de sobrenatural por enquanto.");
        } else {
            System.out.println("Investigando \"" + local + "\"...");
            ser.manifestar();
        }
    }
}
public class Dandadan {
    public static void main(String[] args) {
        Alienigena earthwindandfire = new Alienigena("Mikitaka");
        EspiritoYoukai dio = new EspiritoYoukai("DIO");
        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Campos de Morioh", earthwindandfire);
        mapa.registrar("Mansão Joestar", dio);
        System.out.println("Investigando locais:");
        mapa.investigar("Campos de Morioh");
        System.out.println();
        mapa.investigar("Mansão Joestar");
        System.out.println();
        mapa.investigar("Shopping Center");
    }
}
