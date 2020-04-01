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


def get_japanese_emoticon(path, w_emoticon)
  dictionary = load_library(path)
  
end

def get_english_meaning(path, j_emoticon)
  dictionary = load_library(path)
  dictionary.each_pair do |meaning, lang_hash|
    if lang_hash.has_value?(j_emoticon)
      return meaning
    end
  end
  return "Sorry, that emoticon was not found"
end

p get_english_meaning('lib/emoticons.yml', ":)")





