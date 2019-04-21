require "pry"

def begins_with_r(array)
  t_or_f = true
  array.each do |element|
    t_or_f = false if element[0] != "r"
  end
  t_or_f
end

def contain_a(array)
  a_array = []
  array.each do |element|
    if element.include?("a")
      a_array << element
    end
  end
  a_array
end

def first_wa(array)
  array.each do |element|
    if element.slice(0, 2) == "wa"
      return element
    end
  end
end

def remove_non_strings(array)
  array.keep_if {|element| element.is_a? String}
    return array
end

def count_elements(hash_array)
  hash_array.each do |first_hash|
    first_hash[:count] = 0
    name = first_hash[:name]
      hash_array.each do |second_hash|
        if second_hash[:name] == name
          first_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(array1, array2)
  array2[0].map do |name, stats|
      new_hash = {}
    array1.each do |hash1|
      if hash1[:first_name] == name
        new_hash = stats.merge(hash1)
      end
    end
    new_hash
  end
end

def find_cool(input)
  array = []
  input.each do |hash|
    if hash[:temperature] == "cool"
      array << hash
    end
  end
  array
end

def organize_schools(schools)
  by_location = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if by_location[location]
      by_location[location] << name
    else
      by_location[location] = []
      by_location[location] << name
    end
  end
  by_location
end
