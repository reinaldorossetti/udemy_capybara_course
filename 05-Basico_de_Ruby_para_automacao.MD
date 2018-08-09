Nesse tutorial vamos falar o básico de Ruby.


1. Uma função é nada menos que um bloco de código com uma funcionalidade específica, ela inicia com a palavra reservada **def** e termina com a palavra reservada **end** exemplo:

```ruby
=begin
Pra fazer um comentário grande usamos no inicio do "=begin" e no final do comentário usamos o "=end", 
sem as aspas duplas.
Um comentário simples em uma linha usamos o jogo da velho/cerquilha #
=end

def nome_da_funcao(string, incrementa=1)
  incrementa += 1
  print(string + incrementa.to_s) 
end

# finalizou_a_funcao_e_voltei_pro_inicio
nome_da_funcao("Valor: ") # fiz a chamada da minha função, nessa linha.

```
O **print** no meu código é a função que vai imprimir o valor no console ou shell/cmd/prompt, a função print é diferente das outras linguagens, pois se colocar o print em baixo de outro print ela vai concatenar o resultado de cima com o de baixo. Como no exemplo abaixo.<br>
O comando mais usual no ruby é o **puts** ao invés do print, pois na função puts ela não concatena os valores em sequência, no final ela encerra com um enter "\n".<br>

O **def** é uma definição que aqui vai estar uma função que pode ser retornada ou passada (def vem de function definition).<br>

O **to_s** A função to_s convert o valor numerico para string/texto, para concatenar dois valores ele precisa ser do mesmo tipo, string+string, no caso acima ele é string+number o que vai gerar um error, se o valor numerico não for convertido para string.<br>

O simbolo de **+**  concatena os dois valores para exibir no console.<br>

```ruby
=begin
Pra fazer um comentário grande usamos no inicio do "=begin" e no final do comentário usamos o "=end", sem as aspas duplas.
Um comentário simples em uma linha usamos o jogo da velho/cerquilha #
=end

def nome_da_funcao(string, incrementa=1)
  incrementa += 1
  puts(string + incrementa.to_s )
  print(string + incrementa.to_s)
  print(string + incrementa.to_s  + "\n")
end

# finalizou_a_funcao_e_voltei_pro_inicio
nome_da_funcao("Valor: ") # fiz a chamada da minha função, nessa linha.

```
Resultado:
```ruby:
Valor: 2
Valor: 2Valor: 2

```
<br><br>

2. No ruby devemos importar um biblioteca, é regra básica importar as bibliotecas no inicio do seu código. A importação deve ser separada por linhas.

Fazer assim
```ruby
require 'watir'
require 'selenium-webdriver'
```

Segunda forma de fazer a importação, usando o **require_relative**: 
```ruby:
require_relative 'subfolder/meu_arquivo'
```

<br><br>
3. Como trabalhar com condições em ruby, ou seja if, elsif e else.

```ruby

x = 5  # Criei uma variável x que vai receber um valor numerico 5.

# minha primeira condição, verifica se o valor é menor que 4.
if x < 1
    print("valor incorreto!")
elsif x == 4  # minha segunda condição, verifica se o valor é igual a 1.
    print("valor incorreto!")
elsif x >= 5 and x < 10  # minha terceira condição, verifica se o valor é maior e igual a 5 e menor que 10.
    print("O valor esperado está correto!")
else # O else é digamos se nenhuma das condições foi realizada, ele vai entrar nesse bloco de código.
    print("Nenhuma condição foi encontrada!")
end
```   
![alt text](http://diwo.bq.com/wp-content/uploads/2015/10/ifelse.png "Condição IF ELSE")

Tome muito cuidado quando for criar condições somente use quando for preciso, o excesso de condições pode deixar o código lento.

Uma forma mais reduzida de construir uma lista de condições é o uso do **case**
```ruby
x = 4

case
  when x < 1 then puts "valor incorreto!" # Quando x for menor que um, faça imprimir os valores.
  when x == 4 then  puts "valor incorreto!" # Quando x for igual a 5, faça imprimir os valores.
  when x >= 5, x < 10 then puts "O valor esperado está correto!" # Quando x for maior e igual a 5 e menor que 10, faça imprimir os valores.
  else # nenhum dos resultados encontrados, vai ativar a condição else. 
    puts "Nenhum dos resultados"
end
```
Outra forma de usar o case somente com condições de igualdade entre as condições, somente variando os valores, ainda é mais simples que acima, nesse caso não é preciso declarar a variável x = 15, dentro do case você coloca o valor.
```ruby
case 15
  when 1 then puts "valor incorreto!"
  when 4 then  puts "valor 4 incorreto!"
  when 5, 10 then puts "O valor esperado está correto!"
  else
    puts "Nenhum dos resultados"
end
```
**Abaixo segue uma lista com os operadores aritméticos utilizados em Ruby:**

```ruby
+   # soma
–   # subtração
*   # multiplicação
/   # divisão
//  # divisão de inteiros
**  # potenciação, dois asteristicos.
%   # módulo (resto da divisão)
```

**Segue também os operadores lógicos:**
```ruby
>   # maior

>=   # maior e igual

<=  # menor e igual

==  # igual

!=  # diferente

if not, unless, if !variavel # Operador lógico que representa a negação (inverso de true) da variável atual. 
# Ou seja somente executa se o resultado for false. O uso do simbolo de afirmação "!" para ter a condição negativa é a mais comum,
# no ruby, eu prefiro o uso do not ou == false, acho mais claro de se entender.

and # Operador lógico onde a resposta da operação é verdade se ambas as variáveis de entrada forem verdadeiras.

or ou ||  # Operador lógico onde a resposta da operação é verdade se e somente se pelo menos uma das variáveis de entrada for verdade.
```

No Ruby tudo é objeto, ou seja uma variável é um objeto e pertence a uma determinada classe:<br>
Através do método "class" podemos ver a classe que ela pertence e que tipo ela é:<br>
```ruby
puts 5.class
puts 3.14.class
puts "teste".class
```
Resultado:
```
Fixnum
Float
String
```

Podemos comparar o tipo de estrutura de dados que uma determinada variável é, através do método ".is_a?(Tipo)".
```ruby
puts 5.is_a?(Array)
puts 3.14.is_a?(Integer)
puts "teste".is_a?(String)
```

Resultado:
```
False
False
True
```
