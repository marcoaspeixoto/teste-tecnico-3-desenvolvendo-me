require 'yaml'

def load_format_config
  config_file = File.join(File.dirname(__FILE__), 'format.yaml')
  YAML.load_file(config_file)
end

def apply_format_config(value, format_config)
  length = format_config['length']
  align = format_config['align']
  padding = format_config['padding']

  formatted_value = value.to_s

  if formatted_value.length > length
    formatted_value = formatted_value[0, length]
  end

  if align == 'right'
    formatted_value = formatted_value.rjust(length, padding == 'zeroes' ? '0' : ' ')
  elsif align == 'left'
    formatted_value = formatted_value.ljust(length, padding == 'zeroes' ? '0' : ' ')
  end

  formatted_value
end

def solucao(arg)
  format_config = load_format_config
  result = ""

  arg.each do |hash|
    line = format_config.keys.map { |key| apply_format_config(hash[key], format_config[key]) }.join('')
    result += "#{line}\n"
  end

  result
end

input = [
  { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: 1234 },
  { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: 567 }
]

puts solucao(input)
