require_relative '../lib/question_3'

RSpec.describe 'question 3' do
  let(:config_file) { 'format-1.yaml' }

  it 'deve converter uma string formatada em um hash com base nas configurações do arquivo YAML' do
    input_string_1 = "97905796671Maria Neusa de00001234"
    expected_output_1 = { cpf: '97905796671', name: 'Maria Neusa de', value: '1234' }

    input_string_2 = "44010762900Ricardo Fontes00000567"
    expected_output_2 = { cpf: '44010762900', name: 'Ricardo Fontes', value: '567' }

    expect(convert_to_hash(input_string_1)).to eq(expected_output_1)
    expect(convert_to_hash(input_string_2)).to eq(expected_output_2)
  end
end

