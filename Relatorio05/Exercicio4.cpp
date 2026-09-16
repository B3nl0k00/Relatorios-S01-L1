#include <iostream>
using namespace std;

int main() 
{
    int matriz_solar[5][5];
    for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
            matriz_solar[i][j] = 0;
        }
    }
    int cordx, cordy;
    int opcao;
    while(true){
        cout<<"=== TELEMETRIA DO PAINEL SOLAR ==="<<endl;
        cout<<"1. Ativar Celula"<<endl;
        cout<<"2. Ver Mapa da Matriz"<<endl;
        cout<<"3. Sair"<<endl;
        cout<<"Escolha uma opcao: ";
        cin>>opcao;
        if(opcao==1){
            cout<<"Digite a fileira (0-4): ";
            cin>>cordy;
            cout<<"Digite a coluna (0-4): ";
            cin>>cordx;
            if(matriz_solar[cordx][cordy]==0){
                cout<<"Sucesso: Celula solar ativada!"<<endl;
                matriz_solar[cordx][cordy] = 1;
            }else{
                cout<<"Erro: Célula solar já está em operação!"<<endl;
            }
        }else if(opcao==2){
            cout<<"--- Mapa da Matriz Solar ---"<<endl;
            for(int j=0;j<5;j++){
                for(int i=0;i<5;i++){
                    cout<<"["<<matriz_solar[i][j]<<"]";
                }
                cout<<endl;
            }
        }else{
            break;
        }
    }
    int contativa = 0;
    int contdesa = 0;
    cout<<"=== RELATORIO FINAL DE OPERACAO ==="<<endl;
    for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
            if(matriz_solar[i][j] == 1){
                contativa++;
            }else{
                contdesa++;
            }
        }
    }
    cout<<"Total de celulas ATIVAS: "<<contativa<<endl;
    cout<<"Total de celulas INATIVAS: "<<contdesa<<endl;
    cout<<"Capacidade Operacional: "<<contativa * 4<<".00%"<<endl;//não precisa de iomanip não tem resultado após a virgula
    return 0;
}
