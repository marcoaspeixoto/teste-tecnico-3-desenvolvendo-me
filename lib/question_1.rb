def solucao(arg)
  result = ""

  arg.each do |hash|
    name = hash[:name][0, 11].ljust(11)
    cpf = hash[:cpf][0, 11].ljust(11)
    state = hash[:state][0, 11].ljust(11)
    value = hash[:value][0, 11].ljust(11)

    result += "#{name}#{cpf}#{state}#{value}\n"
  end

  result
end

input = [
  { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' },
  { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567' }
]

puts solucao(input)
