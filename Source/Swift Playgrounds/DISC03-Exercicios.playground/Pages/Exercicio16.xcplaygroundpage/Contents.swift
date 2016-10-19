/*:
 ### Exercício 16
 Faça um programa que carregue duas listas, e apresente a diferença entre seus elementos.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Para resolver esse exercício usamos o tipo **Set** do Swift, que permite criar conjuntos de elementos. As duas principais características de um Set é que, os elementos que nele são inseridos nunca se repetem, e é possível realizar facilmente operações de conjuntos entre dois objetos desse tipo, como por exemplo determinar os elementos em comum entre os dois conjuntos (intersect), ou a união dos elementos de um ou mais conjuntos (union).
 
 O tipo **Set** facilita muito a resolução desse tipo de problema, porém para treinar suas habilidades sugerimos tentar resolver esse exercício manipulando diretamente as listas de elementos.
 */

// Declara duas listas
let list1 = [ 10, 3, 3, 2, 7, 21, 13, 42, 12, 17, 13, 3 ]
let list2 = [ 5, 7, 12, 45, 19, 13, 23, 17, 32, 9, 7 ]

// Cria dois conjuntos a partir das listas
var set1 = Set(list1)
var set2 = Set(list2)

// Obtém as diferenças e similaridades entre as listas
var inBothLists = set1.intersection(set2)
var onlyInFirst = set1.subtracting(set2)
var onlyInSecond = set2.subtracting(set1)

// Imprime as listas
print("Elementos comuns as duas listas: \(inBothLists)")
print("Elementos apenas na primeira lista: \(onlyInFirst)")
print("Elementos apenas na segunda lista: \(onlyInSecond)")