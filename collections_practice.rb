# your code goes here
require 'pry'

def begins_with_r(tools_in_array)
      tools_in_array.all? do |tool|
        tool.start_with?("r")
    end
  end


def contain_a(tools_in_array)
    array = []
      tools_in_array.collect do |tool|
        if tool.include? ("a")
          array << tool
        end
      end
    array
  end


def first_wa(tools_in_array)
    tools_in_array.find do |word|
      if word[0] == "w" && word[1] == "a"
        word
      end
    end
  end


def remove_non_strings(array)
      array.delete_if do |words|
        words.class != String
    end
  array
end


#prev called the inject method but didn't work
def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end

#Need explanation on this
def merge_data(keys,values)
  keys.each do |name_hash|
    values.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
      end
    end
  end



def find_cool(array)
  array.select do |hash| #select would only return elements in collection for whatever's true from the block
    #select returns all that is true from block of code
      hash[:temperature] == "cool" #.has_value? ("cool") #we can directly call the key
    #  array
    #  end
    #end
 end
end

def organize_schools(schools)
    by_location = {} #setting var to empty hash (which you'll push into later)
      schools.each do |school, location_hash| #iterate through the array of hash
        location = location_hash[:location] #set a var for a string for the values parameter and directly CALL THE KEY!!!
          #by_location[location_hash[:location]] = []
          # by_location[location] << school
          #binding.pry
          if by_location[location]
            by_location[location] << school
          else
            by_location[location] =[]
             by_location[location] << school
          end
      end
      by_location
    end
