# require modules here

def load_library(path)
  require 'yaml'
  top = YAML.load_file(path)
  dict = {}
  top.each_pair do |name, emot_array|
    dict[name] = {english: emot_array[0], japanese: emot_array[1]}
  end
  return dict
end


def get_japanese_emoticon
  
  
end

def get_english_meaning(path, w_emoticon)
  dictionary = load_library(path)
  pp dictionary
  
end

get_english_meaning('lib/')





