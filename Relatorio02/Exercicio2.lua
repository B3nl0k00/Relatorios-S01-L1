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
