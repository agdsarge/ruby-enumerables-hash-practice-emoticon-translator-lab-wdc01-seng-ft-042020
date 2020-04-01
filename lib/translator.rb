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
  require 'pp'
  dictionary = load_library(path)
  dictionary.each_pair do |meaning, lang_hash|
    #pp lang_hash
    if lang_hash.has_value?(w_emoticon)
      return meaning
    end
  end
  return 
end

p get_english_meaning('lib/emoticons.yml', ":)")





