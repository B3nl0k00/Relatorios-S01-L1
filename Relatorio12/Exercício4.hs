data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)
data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }
descrever :: Atendimento -> String
descrever a =
  cliente a ++ " | " ++ servico a ++ " | " ++ show (etapa a)
concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }
arrecadado :: [Atendimento] -> Double
arrecadado as =
  sum (map valor (filter (\a -> etapa a == Concluido) as))
main :: IO ()
main = do
  let a1 = Atendimento "Kaká"     "Limpeza das caldeiras"  80.0  NaFila
      a2 = Atendimento "Adriano Imperador"        "Banho de ervas"        45.0  NoBanho
      a3 = Atendimento "Felipe Melo"  "Quarto especial"      120.0  NaFila
      listaOriginal = [a1, a2, a3]
  let listaNova =
        [ a1         
        , concluir a2
        , concluir a3
        ]
  putStrLn "Lista original:"
  mapM_ (putStrLn . descrever) listaOriginal
  putStrLn $ "Arrecadado: R$ " ++ show (arrecadado listaOriginal)
  putStrLn "\nLista nova (alguns concluídos):"
  mapM_ (putStrLn . descrever) listaNova
  putStrLn $ "Arrecadado: R$ " ++ show (arrecadado listaNova)
  putStrLn "\nLista original continua igual:"
  mapM_ (putStrLn . descrever) listaOriginal
