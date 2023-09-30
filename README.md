<h1 align="center">:page_with_curl: Teste Técnico 3 DesenvolvendoMe</h1>

<br>

<div align="center">

![GitHub issues](https://img.shields.io/github/issues-raw/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub milestones](https://img.shields.io/github/milestones/all/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me?style=for-the-badge)

</div>

<br>

## :pencil: Descrição do Projeto

Teste técnico 3 da mentoria DesenvolvendoMe contendo 3 questões com problemas relacionados ao uso de hashes

<br>

## :computer: Tecnologias Utilizadas

Este projeto foi desenvolvido com as seguintes tecnologias:

* Ruby 3.1.2

<br>

## Questões:

1 - O objetivo desta questão é escrever um método que receba uma lista de hashes e retorne um string.

Considere o seguinte código:
```ruby
input = [
  { name: 'Maria Neusa de Aparecida',
    cpf: '97905796671',
    state: 'Sao Paulo',
    value: '1234' },
  { name: 'Ricardo Fontes',
    cpf: '44010762900',
    state: 'Rio Grande do Sul',
    value: '567' }
]

def solucao(arg)
  # Retornar um string
end

solucao(input) == "Maria Neusa97905796671Sao Paulo  1234       \nRicardo Fon44010762900Rio Grande 567        "
```
A sua tarefa é preencher o conteúdo do método solucao de modo que:

- Ele retorne um string que deve conter uma linha para cada elemento do array input
- Cada linha deve ser constituída do valor dos campos name, cpf, state e value, nessa ordem. Cada um dos valores deve ocupar 11 caracteres, truncando ou preenchendo com espaços quando necessário.
- O método deve funcionar mesmo com argumentos diferentes do exemplo acima. A única garantia é que será sempre uma lista de hashes com as chaves name, cpf, state e value.
  
[Solução](https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me/issues/1)

<br>

2 - O objetivo desta questão é extender a solução acima de modo que o formato do string retornado seja configurável.

Considere um arquivo yaml no seguinte modelo. As chaves de primeiro nível (name, cpf, etc) representam atributos do hash e **não são fixas** (quer dizer, elas podem diferir de um arquivo yaml para outro). As chaves de segundo nível são sempre as mesmas: length, align, e padding.

**length**: Com quantos caracteres deve ser formatado esse campo no output. Se o conteúdo do campo ultrapassar esse comprimento, ele deve ser truncado.

**align**: Indica se o conteúdo do campo deve ser alinhado a esquerda ou a direita.

**padding**: Caso o conteúdo do cammpo seja mais curto que a length especificada, o padding indica se o espaço restante deve ser preenchido com espaços em branco ou zero.

Exemplo yaml 1
```ruby
# format-1.yaml
cpf:
  length: 11
  align: left
  padding: spaces
name:
  length: 14
  align: left
  padding: spaces
value:
  length: 8
  align: right
  padding: zeroes
```
Utilizando esse arquivo com o exemplo da questão anterior, o retorno esperado seria:
```ruby
"97905796671Maria Neusa de00001234\n44010762900Ricardo Fontes00000567"
```

Exemplo yaml 2
```ruby
# format-2.yaml
cpf:
  length: 14
  align: right
  padding: zeroes
value:
  length: 8
  align: right
  padding: zeroes
state:
  length: 14
  align: left
  padding: spaces
```
Utilizando esse arquivo com o exemplo da questão anterior, o retorno esperado seria:
```ruby
"0009790579667100001234Sao Paulo     \n0004401076290000000567Rio Grande do "
```

[Solução](https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me/issues/2)

<br>

3 - O objetivo desta questão é implementar a operação inversa da questão 2.

Isto é: escreva um método que recebe como argumento um string e retorna um hash. A forma como ele deve ler o string para extrair os valores é dada por um arquivo yaml como os da questão 2.

Por exemplo, se seguirmos o arquivo “format-1.yaml”.
```ruby
cpf:
  length: 11
  align: left
  padding: spaces
name:
  length: 14
  align: left
  padding: spaces
value:
  length: 8
  align: right
  padding: zeroes
```
Um método corretamente implementado deve se comportar da seguinte forma:
```ruby
solucao("97905796671Maria Neusa de00001234") == { cpf: '97905796671', name: 'Maria Neusa de', value: '1234' }
solucao("44010762900Ricardo Fontes00000567") == { cpf: '44010762900', name: 'Ricardo Fontes', value: '567' }
```

[Solução](https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me/issues/3)

<br>

## :heavy_check_mark: Conclusão

* **Student / Developer:** Marco Peixoto (https://github.com/marcoaspeixoto)
* **Mentor / Leader:** Marco Castro (https://github.com/marcodotcastro)
