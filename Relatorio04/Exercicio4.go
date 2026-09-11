package main
import "fmt"

func validarIngresso(setor string, codigo int) (bool){
	if((setor=="VIP")&&(codigo==2026)){
		return true
	}else{
		return false
	}
}

func main() {
	var sector string
	var coddigo int
	inicio:=true
	for (inicio){
		fmt.Printf("\nDigite o setor do ingresso: ")
		fmt.Scanln(&sector)
		fmt.Printf("\nDigite o código do ingresso: ")
		fmt.Scanln(&coddigo)
		inicio = validarIngresso(sector,coddigo)
		if(inicio){
			break
		}else{
			fmt.Printf("\nIngresso ou setor inválido. Tente novamente.")
		}
	}
	fmt.Printf("\nAcesso liberado à área VIP!")
}
