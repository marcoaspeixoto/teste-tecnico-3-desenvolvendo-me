require 'yaml'
require_relative '../lib/question_2'

RSpec.describe 'solucao' do

  it 'deve formatar corretamente os dados de entrada' do
    input = [
      { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' },
      { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567' }
    ]

    expected_output = "Maria Neusa de97905796671Sao Paulo     00001234\nRicardo Fontes44010762900Rio Grande do 00000567\n"

    expect(solucao(input)).to eq(expected_output)
  end

  it 'deve funcionar corretamente com uma lista de hashes vazia' do
    input = []

    expect(solucao(input)).to eq('')
  end

  it 'deve formatar corretamente com configurações diferentes' do

    custom_input = [
      { name: 'Alice', cpf: '12345678900', state: 'New York', value: '999' },
      { name: 'Bob', cpf: '98765432100', state: 'California', value: '12345' }
    ]

    custom_expected_output = "Alice         12345678900New York      00000999\nBob           98765432100California    00012345\n"

    expect(solucao(custom_input)).to eq(custom_expected_output)
  end
end
