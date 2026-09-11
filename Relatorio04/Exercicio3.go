package main
import "fmt"

func gerarEscalaPlantao(n int){
	d:=1
	for j:=0;j<n;j++ {
    fmt.Println("Plantão", j + 1,":Dia ", d,"do mês")
	d+=4
  }
}

func main() {
	var n int
	fmt.Printf("Digite a quantidade de plantões necessários: \n")
	fmt.Scanln(&n)
	fmt.Printf("--- Escala de Plantão Técnico ---\n")
	gerarEscalaPlantao(n)
}
