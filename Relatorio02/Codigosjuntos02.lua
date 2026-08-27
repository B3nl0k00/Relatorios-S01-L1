print("Digite o expoente inicial (M): ")
local M = tonumber(io.read())
print("Digite o expoente final (N): ")
local N = tonumber(io.read())
print("Digite a base: ")
local baseexp = tonumber(io.read())
for i = M, N do
    local rest = baseexp^i
    print(baseexp.." ^ ".. i .. " = ".. rest)
end
-----------------------------
function contarOcorrencias(tabela, alvo)
    local contador = 0
    for i=1,#tabela do
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end
    return contador
end
print("Digite a quantidade de elementos (N): ")
local N = tonumber(io.read())
local tabela = {}
for i=1,N do
    print("Digite o elemento "..i.." :")
    table.insert(tabela,tonumber(io.read()))
end
print("Digite o número X a ser buscado: ")
local X = tonumber(io.read())
local rest = contarOcorrencias(tabela, X)
print("O número ".. X .." aparece ".. rest.." vez(es) na tabela.")
-------------------------------------
function filtrarMaiores(tabela, limite)
    local tabelamaior = {}
    for i = 1,#tabela do
        if tabela[i]>limite then
            table.insert(tabelamaior,tabela[i])
        end
    end
    return tabelamaior
end
print("Digite a quantidade de elementos (N): ")
local N = tonumber(io.read())
local tabela = {}
for i=1,N do
    print("Digite o elemento "..i.." :")
    table.insert(tabela,tonumber(io.read()))
end
print("Digite o valor limite (K): ")
local K = tonumber(io.read())
local tabelado = filtrarMaiores(tabela, K)
print("--- Elementos maiores que 10 ---")
for i = 1,#tabelado do
    print(tabelado[i])
end
----------------------
function calcularMedia(a, b)
    local media = a + b
    return media / 2
end
function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end
end
function calcularDiferencaAbsoluta(a, b)
    local dif = math.abs(a - b)
    return dif
end
function analisarNumeros(n1, n2, operacao)
    local rest
    if operacao == "media" then
        rest = calcularMedia(n1, n2)
    elseif operacao == "maior" then
        rest = encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then
        rest = calcularDiferencaAbsoluta(n1,n2)
    else
        print("Operação inválida!")
    end
    return rest
end
print("Digite o primeiro número: ")
local num1 = tonumber(io.read())
print("Digite o segundo número: ")
local num2 = tonumber(io.read())
print("Digite a operação ('media','maior' ou'diferenca'):") 
local opcao = io.read()
local resta = analisarNumeros(num1,num2,opcao)
print("Resultado: ".. resta)
