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
