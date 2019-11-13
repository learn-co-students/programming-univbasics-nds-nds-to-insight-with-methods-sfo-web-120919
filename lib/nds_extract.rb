require 'directors_database'
require 'pry'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  director_total = {}
  nds.each do |director|

    director_total[director[:name]] = gross_for_director(director)
  end

  return director_total
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
mg_total = 0
  director_data[:movies].each do |movie|
    mg_total += movie[:worldwide_gross]
    #director_total[director[:name]]
  end

  return mg_total
end
