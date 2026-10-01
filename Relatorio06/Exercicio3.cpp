#include <iostream>
using namespace std;

class MembroInatel{
    public:
      string nome;
      void seApresentar(){cout<<"Sou um membro da comunidade Inatel: "<<nome<<endl;}
};

class Aluno: public MembroInatel{
    public:
      void seApresentar(){cout<<"Meu nome é "<<nome<<" e estudo no curso de "<<curso<<"."<<endl;}
      string curso;
};

class Professor: public MembroInatel{
    public:
      void seApresentar(){cout<<"Meu nome é "<<nome<<" e leciono a disciplina de "<<disciplina<<"."<<endl;}
      string disciplina;
};

int main() 
{
    Aluno estudante;
    Professor mestre;
    string temp;
    getline(cin>>ws,temp);
    estudante.nome = temp;
    getline(cin>>ws,temp);
    estudante.curso = temp;
    getline(cin>>ws,temp);
    mestre.nome = temp;
    getline(cin>>ws,temp);
    mestre.disciplina = temp;
    estudante.seApresentar();
    mestre.seApresentar();
    return 0;
}
