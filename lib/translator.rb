# require modules here
require 'yaml'

def load_library(path)
  emotis = YAML.load_file(path)
  get_emoticon = {}
  get_meaning = {}
  emotis.each do |k,v|
    get_emoticon[k] = v[0]
  end

  emotis.each do |k,v|
    get_meaning[k] = v[1]
  end

  emotis.merge!(get_emoticon)
  emotis.merge!(get_meaning)

  emotis
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
