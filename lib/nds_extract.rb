$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def directors_totals(source)
  result = {
    
  }
  director_index = 0
  director = ""
  while director_index < source.length do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end

def list_of_directors(source)
  arrayofnames = Array.new
    
  director_index = 0
  director_list = ""
  other_index = 0
  while director_index < source.length do
    puts director_list = source[director_index][:name]
    arrayofnames.push(director_list)
    director_index += 1
  end
  arrayofnames
end

def total_gross(source)

  
   # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  grosstotals = directors_totals(source)

  directornames = list_of_directors(source)
  total = 0
  index = 0
  while index < grosstotals.length do
    x_value = grosstotals[index][:name]
    binding.pry
    total += grosstotals[index][:name]
    index += 1
    end
total
end


