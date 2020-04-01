# require modules here

def load_library(path)

  require 'yaml'

  top = YAML.load_file(path)
  erg = {}
  top.each_pair do |name, emot_array|
    erg[name] = {english: emot_array[0], japanese: emot_array[1]}
  end

  return erg
end




def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end