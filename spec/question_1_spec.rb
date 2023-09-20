require_relative '../lib/question_1'

RSpec.describe 'question 1' do
  it 'deve retornar uma string formatada corretamente para a lista de hashes de exemplo' do
    input = [
      { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' },
      { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567' }
    ]

    expected_output = "Maria Neusa97905796671Sao Paulo  1234       \nRicardo Fon44010762900Rio Grande 567        \n"

    expect(string_converter(input)).to eq(expected_output)
  end

  it 'deve funcionar corretamente com uma lista de hashes vazia' do
    input = []

    expect(string_converter(input)).to eq('')
  end
end
