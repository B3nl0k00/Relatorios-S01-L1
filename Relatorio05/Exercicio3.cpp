#include <iostream>
#include <iomanip>
using namespace std;

int main() 
{
    float pesomax;
    cout<<"Informe a capacidade maxima de carga do drone (kg): "<<endl;
    cin>>pesomax;
    cout<<fixed<<setprecision(2);
    float pesoatual = 0;
    int opcao;
    float pacote;
    while(true){
        cout<<"=== SISTEMA DE CARGA DO DRONE ==="<<endl;
        cout<<"1. Verificar Carga"<<endl;
        cout<<"2. Carregar Pacote"<<endl;
        cout<<"3. Descarregar Pacote"<<endl;
        cout<<"4. Encerrar Operacao"<<endl;
        cout<<"Escolha uma opcao: ";
        cin>>opcao;
        if(opcao == 1){
            cout<<"Carga Atual: "<<pesoatual<<"kg / "<<pesomax<<" kg"<<endl;
            cout<<"Espaco Disponivel: "<<pesomax - pesoatual<<" kg"<<endl;
        }else if(opcao == 2){
            cout<<"Digite o peso do pacote a ser carregado (kg): ";
            cin>>pacote;
            if((pesoatual + pacote) > pesomax){
                cout<<"Alerta: Peso máximo de decolagem excedido! Operação cancelada."<<endl;
            }else{
                cout<<"Pacote adicionado com sucesso!"<<endl;
                pesoatual +=pacote;
            }
        }else if(opcao==3){
            cout<<"Digite o peso do pacote a ser removido (kg): ";
            cin>>pacote;
            if((pesoatual - pacote)<0){
                cout<<"Alerta: Peso abaixo do total! Operação cancelada."<<endl;
            }else{
                cout<<"Pacote removido com sucesso!"<<endl;
                pesoatual -=pacote;
            }
        }else{
            cout<<"Encerrando sistema de telemetria..."<<endl;
            break;
        }
    }
    return 0;
}
