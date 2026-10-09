//não consegui fazer direito
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Bentohehe
{
	public class program
	{
		static void Main()
		{
			CombatenteDeGondor[] combatentes = new CombatenteDeGondor[3];
			for(int i=0;i<3;i++){
				Console.Write($"Combatente {i+1}");
				Console.Write("\nNome: ");
				string noma = Console.ReadLine();
				Console.Write("\nPovo: ");
				string pova = Console.ReadLine();
				Console.Write("\nPosto: ");
				string posta = Console.ReadLine();
				combatentes[i] = new CombatenteDeGondor(noma, pova, posta);
				Console.Write("\nEquipar arma?");
				string escolha = Console.ReadLine();
				if(escolha=="sim"){
                    Console.Write("Qual arma? ");
                    string arma = Console.ReadLine();
                    combatentes[i].Equipar(arma);
                }
				foreach (var c in combatentes)
				{
					c.ApresentarUnidade();
				}
			}
		}
	}
	public class CombatenteDeGondor
	{
		public string Nome{get; private set;}
		public string Povo{get; private set;}
		public string Posto{get; private set;}
		public string Armamento{get; private set;} = "desarmado";
		public void CombatenteDeGordor(string nome, string povo, string posto)
		{
			Nome = nome;
			Povo = povo;
			Posto = posto;
		}
		public void Equipar(string arma)
		{
			Armamento = arma;
		}
		public void ApresentarUnidade()
		{
			Console.WriteLine($"Nome: {Nome}\n");
			Console.WriteLine($"Povo: {Povo}\n");
			Console.WriteLine($"Posto: {Posto}\n");
			if(Armamento != "Desarmado"){
				Console.WriteLine($"Armamento: {Armamento}\n");
			}
		}
	}
