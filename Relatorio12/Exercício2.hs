pesoMaximo :: Double
pesoMaximo = 5.0
-- pesoMaximo = 7.5 não funciona pq é mais de uma declaração da mesma coisa
data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }
descrever :: Encomenda -> String
descrever e =
  "Destinatário: " ++ destinatario e
  ++ " | Peso: " ++ show (peso e) ++ " kg"
  ++ " | Frete: R$ " ++ show (frete e)
cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura = filter (\e -> peso e <= pesoMaximo)
totalDeFretes :: [Encomenda] -> Double
totalDeFretes es = sum (map frete es)
main :: IO ()
main = do
  let encomendas =
        [ Encomenda "Unabomber"   2.5  12.0
        , Encomenda "Redmond Mann"           4.0  18.0
        , Encomenda "Bluetarch Mann"          6.5  25.0
        , Encomenda "Zepheniah Mann"          3.2  15.0
        , Encomenda "G-Man"       7.0  30.0
        ]
  putStrLn "Todas as encomendas do dia:"
  mapM_ (putStrLn . descrever) encomendas
  putStrLn "\n Encomendas que cabem na vassoura:"
  let cabem = cabemNaVassoura encomendas
  mapM_ (putStrLn . descrever) cabem
  putStrLn "\n Total de fretes das encomendas que cabem:"
  print (totalDeFretes cabem)
