
Os Arrays são uma coleção de objetos ordenados, ou seja coleções indexadas inteiras de qualquer objeto.

A indexação de um array começa em 0, ou seja o primeiro item do meu array tem o index 0. Um índice negativo é assumido como -1, ou seja indica o último elemento do array, -2 é o próximo elemento da lista da direita para a esquerda, e assim por diante.
```ruby
array = [1, "two", 3.0] # uma lista de objetos ordenados pelo indice.
puts array[0] # Valor impresso 1, do tipo Integer.
puts array[1] # Valor impresso two, do tipo String.
puts array[2] # Valor impresso 3.0, do tipo Float.
```
No Ruby temos um método pra acessar o primeiro elemento do array e o ultimo, com as funções **"first"** e **"last"**:
```ruby
array = [1, "two", 3.0]
array.first #=> 1
array.last  #=> 3.0
```
Para inserir um valor no nosso Array, usamos o método **"push"**
array.push("Passou")

** Quando ele insere o valor vai para o final do nosso array.
```ruby
p array # Resultado => [1, "two", 3.0, "Passou"]
```

Para inserir um valor no nosso Array determinado em que lugar devemos inserir o nosso valor, usamos o método **"insert"**
```ruby
array.insert(3, 'orange', 'pear', 'grapefruit') # => [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]
```
** No exemplo acima ele insere o valores apartir do 4 elemento, o primeiro elemento é o **0** e o ultimo elemento **-1**.   

Para deletar um elemento especifico por index usamos o **"delete_at"** e pra deletar um determinado conteúdo usamos o **"delete¨**.
```ruby
array = [1, "two", 3.0]
array.delete_at(2) # Deleta o elemento que tem o index 2, ou seja o 3.0
p array # Resultado => [1, "two"]

array = [1, "two", 3.0, "two"]
array.delete("two") # Deleta o elemento que contém o valor "two", ou seja que contém o index 1 e 3.
p array # Resultado => [1, 3]
```

Para trazer todos os elementos sem serem repetidos usamos o método **"uniq"**
```
array = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556] # contem valores repetidos.
array.uniq # Resultado => [2, 5, 6, 556, 8, 9, 0, 123]
```

Em outras liguagens usamos o for para interagir em um array/lista de objetos, no ruby também podemos usar o for, mas o método mais usado em ruby é o **"each"**, o código fica entre do/end ou entre colchetes {}, como nos exemplos abaixo:
```ruby
array = [1, 2, 3, 4, 5]
array.each { |a| print a -= 10 } # em uma linha.

# Imprime: -9 -8 -7 -6 -5
# -= é um auto-incremento negativo, o elemento vai ser interagido em todos os valores do array,
$ incrementando o valor -10
# 1 - 10 = -9
# 2 - 10 = -8
# 3 - 10 = -7
# 4 - 10 = -6
# 5 - 10 = -5

# em baixo temos o mesmo loop sobre o array, mas usando o do pra inicio do bloco e end para finalizar o bloco de código dento do each método.
array = [1, 2, 3, 4, 5]
array.each do |a|
  print a -= 10,
end 

# prints: -9 -8 -7 -6 -5
```
Você pode usa a função map ou collect, para alterar o valor do array criando um novo Array.
```ruby
array = [1, 2, 3, 4, 5]
new_array = array.map do |a|
  a -= 10 
end 

p array
p new_array
```
Um uso legal do map em testes é quando você tem um coleção de elemento e que trazer uma propriedade desses elementos, como no exemplo abaixo.
```
elems = driver.elements(tag_name: 'p')
p elems.map(&:text) # traz todos os textos dos elementos, ele auto realiza o loop e traz um array da propriedade texto dos elementos.
```
É bem comum o método **"include?"** para verificar se no meu array existe um determinado valor que desejo. Outro método muito usado é o **"length"** ou **"count"** pra verficar o tamanho do meu array. Para verificar o maior valor temos o método **"max"**.
```
array = [1, 2, 3, 4, 6]
p array.include?(5) # Resultado => true
p array.length # Resultado => 5
p array.count # Resultado => 5
p array.max # Resultado => 6
```

Podemos instalar a documentação do ruby localmente através da biblioteca rdoc-data
```
gem install rdoc-data
```
```
rdoc-data --install
```
No console do windows/shell do linux, enviamos o comando ri em seguida o object que desejamos:
![Ruby doc](https://github.com/reinaldorossetti/ProjetoSpreadTecnologia/blob/master/imgs/ri_array.PNG)<br>
ri Array

Referência:<br>
https://ruby-doc.org/core-2.3.0/Array.html
