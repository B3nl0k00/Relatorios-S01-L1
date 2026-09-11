package main
import "fmt"

func ValidarCodigoRastreio(codigo string) (result bool,fala string){
	if(len(codigo)==10){
		result = false
		fala =  "\nCódigo de rastreio registrado no sistema!"
		return result, fala
	}else{
		result =true
		fala = "\nErro: O código de rastreio deve ter exatamente 10 caracteres."
		return result, fala
	}
}

func main() {
	inicio:=true
	var resposta string
	var coddigo string
	for(inicio){
		fmt.Printf("\nDigite o código de rastreio: ")
		fmt.Scanln(&coddigo)
		inicio, resposta = ValidarCodigoRastreio(coddigo)
		if(inicio){
			fmt.Printf(resposta)
		}else{
			fmt.Printf(resposta)
			break
		}
	}
}
