#include <iostream>
using namespace std;

class LinkSocial{
    private:
      string nome;
      string arcana;
      int rank;
    public:
      void gettersnome(){cout<<nome<<endl;}
      void gettersarcana(){cout<<arcana<<endl;}
      void gettersrank(){cout<<rank<<endl;}
      void settersnome(string n){ nome = n;}
      void settersarcana(string a){ arcana = a;}
      void settersrank(int r){ rank = r;}
      void subirRank(){
        rank++;
      }
};

int main() 
{
    LinkSocial amigo;
    string temp;
    int temporario;
    getline(cin>>ws,temp);
    amigo.settersnome(temp);
    getline(cin>>ws,temp);
    amigo.settersarcana(temp);
    cin>>temporario;
    amigo.settersrank(temporario);
    amigo.subirRank();
    amigo.gettersnome();
    amigo.gettersarcana();
    amigo.gettersrank();
    return 0;
}
