data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }
esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []     = "O caderno está vazio."
esbocoMaisRecente (e:_)  = titulo e ++ " (" ++ tecnica e ++ ")"
contarEsbocos :: [Esboco] -> Int
contarEsbocos []     = 0
contarEsbocos (_:xs) = 1 + contarEsbocos xs
horasDesenhando :: [Esboco] -> Int
horasDesenhando []     = 0
horasDesenhando (e:xs) = horas e + horasDesenhando xs
main :: IO ()
main = do
  let caderno =
        [ Esboco "Eclipse"     "nanquim"  4
        , Esboco "Made in Heaven" "carvão"   6
        , Esboco "Baki contra seu pai"    "grafite"  3
        ]
  putStrLn "Caderno original:"
  putStrLn $ "Mais recente: " ++ esbocoMaisRecente caderno
  putStrLn $ "Número de esboços: " ++ show (contarEsbocos caderno)
  putStrLn $ "Total de horas: " ++ show (horasDesenhando caderno)
  putStrLn "\nCaderno vazio:"
  putStrLn $ "Mais recente: " ++ esbocoMaisRecente []
  let novoEsboco = Esboco "Portal das Sombras" "nanquim" 5
      cadernoNovo = novoEsboco : caderno
  putStrLn "\nCaderno novo (com esboço na frente)"
  putStrLn $ "Mais recente: " ++ esbocoMaisRecente cadernoNovo
  putStrLn $ "Número de esboços: " ++ show (contarEsbocos cadernoNovo)
  putStrLn "\nCaderno original (continua igual)"
  putStrLn $ "Mais recente: " ++ esbocoMaisRecente caderno
  putStrLn $ "Número de esboços: " ++ show (contarEsbocos caderno)
  --putStrLn $ titulo (head []) não dá porque é uma lista vazia
