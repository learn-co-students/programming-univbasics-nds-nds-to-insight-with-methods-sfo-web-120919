require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}

  nds.each do |director_data|
      result[director_data[:name]] = gross_for_director(director_data)

    end

    return result

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total[director[:name]] = 0

  director_data[:movies].each dp |movie|
    total[director[:name]] += movie[:worldwide_gross]

  end

  return total[director[:name]]
  
end
