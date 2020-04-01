# require modules here

def load_library(path)
  # code goes here
  #return hash where each key is name of emoticon
  #each key's value is a hash. keys are :english and :japanese
  require 'yaml'
  require 'pp'
  top = YAML.load_file(path)
  pp top
  erg = {}
  top.each_pair do |name, emot_array|
    erg[name] = {english: emot_array[0], japanese: emot_array[1]}
  end
  pp erg
  return erg
end

load_library


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end