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
