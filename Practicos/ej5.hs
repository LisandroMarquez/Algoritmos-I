{-
&10) Implementá en Haskell la función que definiste en el ejercicio anterior
?Definí recursivamente una función Bool que verifica que todos los elementos de una lista son True
! todos.xs ≡ ⟨∀i : 0 ≤ i < #xs : xs.i⟩
-}
todos :: [Bool] -> Bool
todos [] = True
todos (x:xs)    | x = todos xs
                | otherwise = False