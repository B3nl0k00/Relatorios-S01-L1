#include <iostream>
using namespace std;

class banda{
    private:
       string nome;
       int integrantes;
       float potenciaSom;
       int energia;
    public:
       void setNome(string n) { nome = n;}
       void setIntegrantes(int i) { integrantes = i;}
       void setPotencia(float p) { potenciaSom = p;}
       void setEnergia(int e) {energia = e;}
       void duelar(banda& a, banda& b){
        string tp1, tp2;
        getline(cin>>ws,tp1);
        getline(cin>>ws,tp2);
        cout<<"Apresentação de "<<tp1<<" contra "<<tp2<<" completa"<<endl;
        if(tp1==a.nome){
            b.energia -= a.potenciaSom;
        }else{
            a.energia -= b.potenciaSom;
        }
       };
       void status(){
        cout<<" "<<endl;
        cout<<"Nome: "<<nome<<endl;
        cout<<"Numero de integrantes: "<<integrantes<<endl;
        cout<<"Potencia de som: "<<potenciaSom<<endl;
        cout<<"Energia da plateia: "<<energia<<endl;
       };
};

int main() 
{
    banda rock1;
    banda rock2;
    string temp;
    int temporario;
    float tbmtemp;
    getline(cin>>ws, temp);
    rock1.setNome(temp);
    cin>>temporario;
    rock1.setIntegrantes(temporario);
    cin>>tbmtemp;
    rock1.setPotencia(tbmtemp);
    cin>>temporario;
    rock1.setEnergia(temporario);
    getline(cin>>ws, temp);
    rock2.setNome(temp);
    cin>>temporario;
    rock2.setIntegrantes(temporario);
    cin>>tbmtemp;
    rock2.setPotencia(tbmtemp);
    cin>>temporario;
    rock2.setEnergia(temporario);
    rock1.duelar(rock1,rock2);
    rock1.status();
    rock2.status();
    return 0;
}
