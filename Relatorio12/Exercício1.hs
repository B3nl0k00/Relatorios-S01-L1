data Cafe = Cafe String Double Int
descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco
forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"
precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite
    then preco + 2.0
    else preco
main = do
  let cafeSuave      = Cafe "Chemex" 12.50 3
      cafeEquilibrado = Cafe "V60 medio"   15.00 6
      cafeForte       = Cafe "Aeropress" 18.00 9
  putStrLn $ descrever cafeSuave      ++ " | " ++ forca cafeSuave
  putStrLn $ descrever cafeEquilibrado ++ " | " ++ forca cafeEquilibrado
  putStrLn $ descrever cafeForte       ++ " | " ++ forca cafeForte
  putStrLn "\nPreço do Aeropress:"
  print $ precoDoPedido False cafeForte   
  print $ precoDoPedido True  cafeForte
