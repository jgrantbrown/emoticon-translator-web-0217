# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  library={"get_meaning"=>{} ,"get_emoticon"=>{}}
  hash=YAML.load_file(file_path)

  hash.map do |key,value|
      library["get_meaning"][value[1]]= key
      library["get_emoticon"][value[0]]= value[1]
      library
  end
  library
    # code goes here
end

def get_japanese_emoticon(file_path,emoticon)
  library=load_library(file_path)
  if library["get_emoticon"][emoticon] !=nil
    return  library["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  # code goes here
end

def get_english_meaning(file_path,emoticon)
  library=load_library(file_path)# code goes here
  if library["get_meaning"][emoticon] != nil
    return library["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
