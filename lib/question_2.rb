require 'yaml'

def load_format_config
  config_file = File.join(__dir__, 'format.yaml')
  YAML.load_file(config_file)
end

def configure_string(arg)
  config = load_format_config
  result = ""

  arg.each do |item|
    formatted_line = ""

    config.each do |field, settings|
      value = item[field.to_sym].to_s

      # Aplicar configurações de alinhamento e preenchimento
      if settings['align'] == 'left'
        formatted_value = value[0, settings['length']].ljust(settings['length'], ' ')
      else
        formatted_value = value.rjust(settings['length'], settings['padding'] == 'zeroes' ? '0' : ' ')
      end

      formatted_line += formatted_value
    end

    result += "#{formatted_line}\n"
  end

  result
end

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

puts configure_string(input)
