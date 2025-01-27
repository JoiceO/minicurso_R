install.packages("stringr")

library(stringr)

fruit

str_detect(fruit,"a") #detecta se o objeto tem ou n�o a letra 'a'

str_which(fruit,"a") #retorna a posi��o no vetor do objeto que tem 'a'

str_count(fruit,"a") #mostra quantas vezes cada objeto tem a letra 'a'

str_locate(fruit,"a") #localiza a posui��o da letra 'a' em cada objeto

str_locate_all(fruit,"a")

str_sub(fruit,1,3) #separa as 3 primeiras palavras de cada objeto

str_sub(fruit,-3) #separa as 3 �ltimas palavras de cada objeto

str_subset(fruit,"b") #cria um subvetor com os objetos que tem a letra 'b'

grep("b", fruit, value = TRUE) #fun��o grep faz o mesmo que a fun��o acima

str_extract(fruit,"[aeiou]")

sentences

str_match(sentences,"(a|the) (\\w+)")

str_length(fruit)

length(fruit)

#Exerc�cios
#  1. Utilize o conjunto de dados fruit em todos os exerc�cios
# Verifique, utlizando a fun��o str_which(), se existe alguma fruta no vetor que n�o cont�m nenhuma vogal.
fruit[-str_which(fruit, "[aeiou]")]

# 2. Usando apenas uma linha de comando, execute um c�digo que retorna a quantidade de frutas que possuem nome composto
length(str_which(fruit, "\\s"))

# 3. Utilizando apenas uma linha de comando, execute um c�digo que retorna a quantidade de frutas que possuem a letra 'a' como segunda letra do nome
fruit[grep(".a." , str_sub(fruit, 1, 3))]

# 4. Armazene o nome das frutas do exerc�cio anterior em um novo vetor chamado vet_a2
vet_a2 <- fruit[grep(".a." , str_sub(fruit, 1, 3))]
vet_a2

# 5. Substitua somente a letra 'a' presente na segunda letra do nome das frutas por "-". (exemplo: "b-nana")
str_sub(vet_a2, 2, 2) = "-" 
vet_a2