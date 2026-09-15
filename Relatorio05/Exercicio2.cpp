#include <iostream>
#include <iomanip>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho){
    float porcento = 1;
    for(int i=0; i < tamanho; i++){
        porcento = porcento * probabilidades[i];
    }
    return porcento;
}


int main() 
{
    int n;
    cout<<"Digite a quantidade de componentes do sistema: ";
    cin>>n;
    float probabilidade[100];
    for(int i=0;i<n;i++){
        cout<<"Digite a probabilidade do componente "<<i<<" (ex: 0.95):";
        cin>>probabilidade[i];
    }
    float porcento = calcular_confiabilidade_sistema(probabilidade,n);
    cout<<"Confiabilidade total do sistema: "<<fixed<<setprecision(4)<<porcento;
    cout<<" ("<<fixed<<setprecision(2)<<(porcento*100)<<"%)"<<endl;
    return 0;
}
