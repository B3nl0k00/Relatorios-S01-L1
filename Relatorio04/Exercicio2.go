package main
import "fmt"

func main() {
	var vendas1 int
	var vendas2 int
	var vendas3 int
	fmt.Printf("Digite as vendas do 1º trimestre: ")
	fmt.Scanln(&vendas1)
	fmt.Printf("\nDigite as vendas do 2º trimestre: ")
	fmt.Scanln(&vendas2)
	fmt.Printf("\nDigite as vendas do 3º trimestre: ")
	fmt.Scanln(&vendas3)
	fmt.Printf("\n")
	vendido := vendas1 + vendas2 + vendas3
	if vendido < 100{
		fmt.Printf("Meta mínima anual não atingida!")
	}else{
		switch {
    case (vendido >= 250):
        fmt.Println("Classificação: Categoria Top Seller")
    case ((vendido>=180)&&(vendido <=249)) :
        fmt.Println("Classificação: Categoria Sênior")
    default:
        fmt.Println("Classificação: Categoria Pleno \n")
  }
	}
}
