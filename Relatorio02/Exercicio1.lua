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
