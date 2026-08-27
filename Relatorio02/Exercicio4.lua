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
