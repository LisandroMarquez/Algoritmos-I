{-
# EJERCICIO 1
&Definí en Haskell las funciones derivadas en el ejercicio 2 y evaluá las mismas en los ejemplos utilizados en el ejercicio 3.
-}

-- *a.
sum_cuad :: [Int] -> Int
sum_cuad [] = 0
sum_cuad (x:xs) = x * x + sum_cuad xs

-- ! More efficient
sum_cuad1 :: [Int] -> Int
sum_cuad1 = foldr (\ x -> (+) (x * x)) 0

-- *b.
iga :: Eq a => a -> [a] -> Bool
iga e [] = True
iga e (x:xs) = (x == e) && iga e xs

-- ! More efficient
iga1 :: Eq a => a -> [a] -> Bool
iga1 e = foldr (\ x -> (&&) (x == e)) True

-- *c.
expo :: Int -> Int -> Int
expo x 0 = 1
expo x n = x * expo x (n-1)

-- *d.
sum_par :: Int -> Int
sum_par 0 = 0
sum_par n   | n `mod` 2 == 0 = sum_par (n-1) + n
            | n `mod` 2 == 1 = sum_par (n-1)

-- ! More readable
sum_par1 :: Int -> Int
sum_par1 0 = 0
sum_par1 n  | even n = sum_par1 (n-1) + n
            | odd n = sum_par1 (n-1)

-- *e.
cuantos :: (a -> Bool) -> [a] -> Int
cuantos p [] = 0
cuantos p (x:xs)    |  p x = 1 + cuantos p xs
                    | not (p x) = cuantos p xs

{-
# EJERCICIO 2
& Tipos enumerados. Cuando los distintos valores que debemos distinguir en un tipo son finitos, podemos enumerar cada uno de los valores del tipo. Por ejemplo, podríamos representar las carreras que se dictan en nuestra facultad definiendo el siguiente tipo:
! data Carrera = Matematica | Fisica | Computacion | Astronomia
&Cada uno de estos valores es un constructor, ya que al utilizarlos en una expresión, generan un valor del tipo Carrera.
*a) Implementá el tipo Carrera como está definido arriba.
*b) Definí la siguiente función, usando pattern matching: titulo :: Carrera -> String que devuelve el nombre completo de la carrera en forma de string. Por ejemplo, para el constructor Matematica, debe devolver ”Licenciatura en Matemática”.
*c) Para escribir música se utiliza la denominada notación musical, la cual consta de notas (do, re, mi, ...). Además, estas notas pueden presentar algún modificador ♯ (sostenido) o ♭ (bemol), por ejemplo do♯, si♭, etc. Por ahora nos vamos a olvidar de estos modificadores (llamados alteraciones) y vamos a representar las notas básicas. Definí el tipo NotaBasica con constructores Do, Re, Mi, Fa, Sol, La y Si
*d) El sistema de notación musical anglosajón, tambi ́en conocido como notación o cifrado americano, relaciona las notas básicas con letras de la A a la G. Este sistema se usa por ejemplo para las tablaturas de guitarra. Programá usando pattern matching la función:
?cifradoAmericano : : NotaBasica −> Char
* que relaciona las notas Do, Re, Mi, Fa, Sol, La y Si con los caracteres ’C’ , ’D’, ’E’, ’F’, ’G’, ’A’ y ’B’ respectivamente.
-}

data Carrera = Matematica | Fisica | Computacion | Astronomia