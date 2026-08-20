Dim A as integer
Dim B as integer
Dim C as integer
Input A
Input B
C = A * 35
if B >= C then
 print "Meta Atingida"
 else
 print "Meta nao atingida"
 END IF
----------------------
Dim Segredo as integer
Segredo = 4321
Dim senha as integer
do
 input senha
 if senha = Segredo then
  Print "Transacao autorizada!"
 else
  Print "PIN invalido. Tente novamente."
  End if
  Loop until senha = Segredo
---------------------------
Dim tempo as integer
Dim minutos as integer
Dim segundos as integer
input tempo
minutos = tempo * 60
segundos = minutos * 60
print tempo
print minutos
print segundos
----------------------------
Dim tempo as single
Dim distancia as single
Dim pace as single
input distancia
input tempo
pace = tempo / distancia
print pace, "min/km"
