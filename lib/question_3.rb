require 'yaml'

# Esta função carrega as configurações de formatação a partir de um arquivo YAML.
def load_format_config(config_file = 'format-1.yaml')
  YAML.load_file(File.join(__dir__, config_file))
end

# Esta função converte uma string formatada em um hash com base nas configurações do arquivo YAML.
def convert_to_hash(string)
  config = load_format_config
  result = {}

  # Itera sobre as configurações do arquivo YAML.
  config.each do |field, settings|
    length = settings['length']
    align = settings['align']
    padding = settings['padding']

    # Dependendo do alinhamento ('left' ou 'right'), a string é lida da esquerda para a direita ou vice-versa.
    if align == 'left'
      value = string.slice!(0, length).strip
    else
      value = string.slice!(-length, length)
      value = value.gsub(/^0+(?!$)/, '') unless value.nil?  # Remove zeros à esquerda
    end

    # O valor lido é armazenado no hash resultante com a chave correspondente.
    result[field.to_sym] = value
  end

  result
end

# Exemplos de uso
puts convert_to_hash("97905796671Maria Neusa de00001234")
puts convert_to_hash("44010762900Ricardo Fontes00000567")
