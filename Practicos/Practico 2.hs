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
* a) Implementá el tipo Carrera como está definido arriba.
* b) Definí la siguiente función, usando pattern matching:
? titulo :: Carrera -> String
* que devuelve el nombre completo de la carrera en forma de string. Por ejemplo, para el constructor Matemática, debe devolver ”Licenciatura en Matemática”.
* c) Para escribir música se utiliza la denominada notación musical, la cual consta de notas (do, re, mi, ...). Además, estas notas pueden presentar algún modificador ♯ (sostenido) o ♭ (bemol), por ejemplo do♯, si♭, etc. Por ahora nos vamos a olvidar de estos modificadores (llamados alteraciones) y vamos a representar las notas básicas. Definí el tipo NotaBasica con constructores Do, Re, Mi, Fa, Sol, La y Si
* d) El sistema de notación musical anglosajón, también conocido como notación o cifrado americano, relaciona las notas básicas con letras de la A a la G. Este sistema se usa por ejemplo para las tablaturas de guitarra. Programá usando pattern matching la función:
? cifradoAmericano :: NotaBasica −> Char
* que relaciona las notas Do, Re, Mi, Fa, Sol, La y Si con los caracteres ’C’ , ’D’, ’E’, ’F’, ’G’, ’A’ y ’B’ respectivamente.
-}
-- a.
data Carrera = Matematica | Fisica | Computacion | Astronomia

-- b.
titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Computacion = "Licenciatura en Computacion"
titulo Astronomia = "Licenciatura en Astronomia"

-- c.
data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Show, Ord, Eq, Bounded)

-- d.
cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

{-
# EJERCICIO 4
* a. Definí usando polimorfismo ad hoc la función minimoElemento que calcula (de manera recursiva) cuál es el menor valor de una lista de tipo [a]. Asegurate que sólo esté definida para listas no vacías.
* b. Definí la función minimoElemento’ de manera tal que el caso base de la recursión sea el de la lista vacía. Para ello revisá la clase Bounded. Ayuda: Para probar esta función dentro de ghci con listas vacías, indicá el tipo concreto con tipos de la clase Bounded, por ejemplo: ([1,5,10]::[Int]), ([]::[Bool]), etc.
* c. Usá la función minimoElemento para determinar la nota más grave de la melodía: [Fa, La, Sol, Re, Fa]
-}
-- a.
minimoElemento :: Ord a => [a] -> a
minimoElemento [x] = x
minimoElemento (x:y:xs) | max x y == x = minimoElemento (x:xs)
                        | otherwise = minimoElemento (y:xs)
-- % Más fácil de leer y ejecutar: minimoElemento (x:xs) = min x (minimoElemento xs)

-- b.
minimoElemento' :: Ord a => Bounded a => [a] -> a
minimoElemento' [] = maxBound
minimoElemento' (x:xs) = min x (minimoElemento' xs)

-- c.
minimoElemento'' :: [NotaBasica] -> NotaBasica
minimoElemento'' [] = minBound
minimoElemento'' (x:xs) = min x (minimoElemento'' xs)

{-
# EJERCICIO 5
* a) Implementá el tipo Deportista y todos sus tipos accesorios (NumCamiseta, Altura, Zona, etc) tal como están definidos arriba.
* b) ¿Cuál es el tipo del constructor Ciclista?
* c) Programá la función contar_velocistas :: [Deportista] -> Int que dada una lista de deportistas xs, devuelve la cantidad de velocistas que hay dentro de xs. Programar contar_velocistas sin usar igualdad, utilizando pattern matching.
* d) Programá la función contar_futbolistas :: [Deportista] -> Zona -> Int que dada una lista de deportistas xs, y una zona z, devuelve la cantidad de futbolistas incluidos en xs que juegan en la zona z. No usar igualdad, sólo pattern matching.
* e) ¿La función anterior usa filter? Si no es así, reprogramala para usarla
-}
-- a.
--Sinónimos de tipo
type Altura = Int
type NumCamiseta = Int

--Tipos algebráicos sin parámetros (aka enumerados)
data Zona = Arco | Defensa | Mediocampo | Delantera deriving (Show, Eq)
data TipoReves = DosManos | UnaMano                 deriving (Show, Eq)
data Modalidad = Carretera | Pista | Monte | BMX    deriving (Show, Eq)
data PiernaHabil = Izquierda | Derecha              deriving (Show, Eq)

--Sinónimo
type ManoHabil = PiernaHabil

--Deportista es un tipo algebraico con constructores paramétricos
data Deportista = Ajedrecista
                | Ciclista Modalidad
                | Velocista Altura
                | Tenista TipoReves ManoHabil Altura
                | Futbolista Zona NumCamiseta PiernaHabil Altura    deriving (Show, Eq)

-- b.
-- Ciclista -> Modalidad (Enum)

-- c.
contarVelocistas :: [Deportista] -> Int
contarVelocistas [] = 0
contarVelocistas (Velocista _:xs) = 1 + contarVelocistas xs
contarVelocistas (_:xs) = contarVelocistas xs

-- d.
contarFutbolistas :: [Deportista] -> Zona -> Int
contarFutbolistas [] _ = 0
contarFutbolistas ((Futbolista Arco _ _ _):xs) Arco = 1 + contarFutbolistas xs Arco
contarFutbolistas ((Futbolista Defensa _ _ _):xs) Defensa = 1 + contarFutbolistas xs Defensa
contarFutbolistas ((Futbolista Mediocampo _ _ _):xs) Mediocampo = 1 + contarFutbolistas xs Mediocampo
contarFutbolistas ((Futbolista Delantera _ _ _):xs) Delantera = 1 + contarFutbolistas xs Delantera
contarFutbolistas (_:xs) z = contarFutbolistas xs z

-- e. (ME GUSTA MÁS ESTA VAINA MI GENTE)
contarFutbolistas' :: [Deportista] -> Zona -> Int
contarFutbolistas' xs zona = length (filter (esFutbolistaDeZona zona) xs)

esFutbolistaDeZona :: Zona -> Deportista -> Bool
esFutbolistaDeZona Arco (Futbolista Arco _ _ _) = True
esFutbolistaDeZona Defensa (Futbolista Defensa _ _ _) = True
esFutbolistaDeZona Mediocampo (Futbolista Mediocampo _ _ _) = True
esFutbolistaDeZona Delantera (Futbolista Delantera _ _ _) = True
esFutbolistaDeZona _ _ = False

{-
# EJERCICIO 6
* a. psum xs = ⟨ ∀ i : 0 ≤ i ≤ #xs : sum.(xs↑i) ≥ 0 ⟩ 
* b. sum ant xs = ⟨ ∃ i : 0 ≤ i < #xs : xs.i = sum.(xs↑i) ⟩ 
* c. sum8 xs = ⟨ ∃ i : 0 ≤ i ≤ #xs : sum.(xs↑i) = 8 ⟩ 
* d. f xs = ⟨Max i : 0 ≤ i < #xs ∧ sum.(xs↑i) = sum.(xs↓i) : i ⟩ 
-}
-- a.
psum :: [Int] -> Bool
psum xs = gpsum 0 xs

gpsum :: Int -> [Int] -> Bool
gpsum n [] = n >= 0
gpsum n (x:xs) = (n >= 0) && gpsum (n+x) xs

-- b.
sumAnt :: [Int] -> Bool
sumAnt xs = gsumAnt 0 xs

gsumAnt :: Int -> [Int] -> Bool
gsumAnt n [] = False
gsumAnt n (x:xs) = (x == n) || gsumAnt (n+x) xs

-- c.
sum8 :: [Int] -> Bool
sum8 xs = gsum8 0 xs  

gsum8 :: Int -> [Int] -> Bool
gsum8 n [] = n == 8
gsum8 n (x:xs) = (n == 8) || gsum8 (n+x) xs

-- d.
-- + No lo hice


{-
# EJERCICIO 11
-}
primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento (x:xs) = Just x

{-
# EJERCICIO 12
& 1) Programá las siguientes funciones:
* a. atender :: Cola -> Maybe Cola, que elimina de la cola a la persona que está en la primer posición de una cola, por haber sido atendida. Si la cola está vacía, devuelve Nothing.
* b. encolar :: Deportista -> Cola -> Cola, que agrega una persona a una cola de deportistas, en la última posición.
* c. busca :: Cola -> Zona -> Maybe Deportista, que devuelve el/la primera futbolista dentro de la cola que juega en la zona que se corresponde con el segundo parámetro. Si no hay futbolistas jugando en esa zona devuelve Nothing.
& 2) ¿A qué otro tipo se parece Cola?.
-}

data Cola = VaciaC | Encolada Deportista Cola   deriving (Show, Eq)
-- a.
atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada _ c) = Just c

-- b.
encolar :: Deportista -> Cola -> Cola
encolar d VaciaC = Encolada d VaciaC
encolar d (Encolada de c) = Encolada de (encolar d c)

-- c.
buscar :: Cola -> Zona -> Maybe Deportista
buscar VaciaC _ = Nothing
buscar (Encolada (Futbolista z1 n p a) cola) z2 | z1 == z2 = Just (Futbolista z2 n p a)
                                                | otherwise = buscar cola z2
buscar (Encolada _ cola) z = buscar cola z

{-
# EJERCICIO 13
& 1) ¿Como se debe instanciar el tipo ListaAsoc para representar la información almacenada en una guía telefónica?
& 2) Programá las siguientes funciones:
* a. la_long :: ListaAsoc a b -> Int que devuelve la cantidad de datos en una lista.
? b. la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b, que devuelve la concatenación de dos listas de asociaciones.
* c. la_agregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b, que agrega un nodo a la lista de asociaciones si la clave no está en la lista, o actualiza el valor si la clave ya se encontraba.
? d. la_pares :: ListaAsoc a b -> [(a, b)] que transforma una lista de asociaciones en una lista de pares clave-dato.
* e. la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b que dada una lista y una clave devuelve el dato asociado, si es que existe. En caso contrario devuelve Nothing.
? f. la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b que dada una clave a elimina la entrada en la lista.
-}
-- 1a.
data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b)   deriving (Show, Eq)

-- 2a.
laLong :: ListaAsoc a b -> Int
laLong Vacia = 0
laLong (Nodo _ _ l) = 1 + laLong l

-- 2b.
laConcat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
laConcat l1 Vacia = l1
laConcat Vacia l2 = l2
laConcat (Nodo a1 b1 (Nodo a3 b3 l1)) (Nodo a2 b2 l2) = Nodo a1 b1 (laConcat (Nodo a3 b3 l1) (Nodo a2 b2 l2))
-- % Más fácil de leer: laConcat (Nodo x y xs) ys = Nodo x y (la_concat xs ys)

-- 2c.
laAgregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b
laAgregar Vacia a b = Nodo a b Vacia
laAgregar (Nodo a1 b1 l1) a2 b2 | a1 == a2 = Nodo a1 b2 l1
                                | otherwise = Nodo a1 b1 (laAgregar l1 a2 b2)

-- 2d.
laPares :: ListaAsoc a b -> [(a, b)]
laPares Vacia = []
laPares (Nodo a1 b1 l1) = (a1,b1) : laPares l1

-- 2e.
laBusca :: Eq a => ListaAsoc a b -> a -> Maybe b
laBusca Vacia a = Nothing
laBusca (Nodo a1 b1 l1) a2  | a1 == a2 = Just b1
                            | otherwise = laBusca l1 a2

-- 2f.
laBorrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b
laBorrar _ Vacia = Vacia
laBorrar a2 (Nodo a1 b l)   | a1 == a2 = l
                            | otherwise = Nodo a1 b (laBorrar a2 l)

{-
# EJERCICIO 14
-}
