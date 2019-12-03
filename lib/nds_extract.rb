require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index = 0
  result = {}
  
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    result[director_name] = 0
    movie_index = 0
    
    while movie_index < nds[director_index][:movies].length do
      result[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end
    director_index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_total = 0 
  index = 0 
  
  while index < director_data[:movies].length do
    gross_total += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end
  gross_total
  
end
