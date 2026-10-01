#include <iostream>
#include <vector>
using namespace std;

class Hobbit{
    protected:
      string nome;
    public:
      virtual void fazerAtividade() const { cout<<"O hobbit "<<nome<<" está aproveitando um dia tranquilo na Comarca."<<endl;}
      Hobbit(string n): nome(n){}
      virtual ~Hobbit(){}
};

class Jardineiro: public Hobbit{
    public:
      void fazerAtividade()const override{ cout<<"O jardineiro "<<nome<<" está cuidando das flores e plantas ao redor das tocas!"<<endl;}
      Jardineiro (string n):Hobbit(n){}
};

class Cozinheiro: public Hobbit{
    public:
      void fazerAtividade()const override{ cout<<"O cozinheiro "<<nome<<" está preparando o segundo café da manhã para os convidados!"<<endl;}
      Cozinheiro(string n):Hobbit(n){}
};

class Fazendeiro: public Hobbit{
    public:
      void fazerAtividade() const override{ cout<<"O fazendeiro "<<nome<<" está colhendo vegetais e hortaliças em suas terras!"<<endl;}
      Fazendeiro(string n):Hobbit(n){}
};

int main() 
{
    vector<Hobbit*> hobbitos;
    string temp;
    getline(cin>>ws,temp);
    hobbitos.push_back(new Jardineiro(temp));
    getline(cin>>ws,temp);
    hobbitos.push_back(new Cozinheiro(temp));
    getline(cin>>ws,temp);
    hobbitos.push_back(new Fazendeiro(temp));
    for (auto Hobbit : hobbitos) {
        Hobbit->fazerAtividade();
    }
    for (auto Hobbit : hobbitos) {
        delete Hobbit;
    }
    hobbitos.clear();
    return 0;
}
