# require modules here

def load_library
  # code goes here
  #return hash where each key is name of emoticon
  #each key's value is a hash. keys are :english and :japanese
  require 'yaml'
  require 'pp'
  top = YAML.load_file('emoticons.yml')
  pp top
  
  
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end