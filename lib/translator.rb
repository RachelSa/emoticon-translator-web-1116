# require modules here
require 'yaml'

def load_library(path)
  emotis = YAML.load_file(path)
  get_emoticon = {}
  get_meaning = {}
  result = {}
  emotis.each do |k,v|
    get_emoticon[v[0]] = v[1]
  end

  emotis.each do |k,v|
    get_meaning[v[1]] = k
  end
  result["get_meaning"] = get_meaning
  result["get_emoticon"] = get_emoticon

  result
end

def get_japanese_emoticon(path, emoticon)
  emotis = load_library(path)
  word = emotis["get_emoticon"][emoticon]
  translate = emotis["get_meaning"]
  translate.each do |k,v|
  		if v == word
  			return k
      else return "Sorry, that emoticon was not found"
    	end
  end
end

def get_english_meaning(path, emoticon)
  emotis = load_library(path)
end
