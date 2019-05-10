require 'pry'
# your code goes here
def begins_with_r(array)
  starts_with_r = []
  array.each do |element|
    if element.start_with?("r") == true
      starts_with_r << element
    end
  end
  if starts_with_r.size == array.size
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  starts_with_wa = []
  array.each do |element|
    if element.to_s.start_with?("wa") == true
      starts_with_wa << element
    end
  end
  starts_with_wa[0]
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  counter = 0
  new_array = []
  array.each do |element|
    counter = array.count(element)
    new_array << element.merge(:count => counter)
  end
  new_array.uniq
end

def merge_data(keys, data)
  data[0].values.map.with_index {|value, index| keys[index].merge(value)}
end

def find_cool(cool)
  found_cool = []
  cool.each do |element|
    element.each do |key, value|
      if value == "cool"
        found_cool << element
      end
    end
  end
  found_cool
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, info|
    info.each do |key, value|
      organized_schools[value] = []
    end
  end
  schools.each do |school, info|
    info.each do |key, value|
      organized_schools.each do |location, x|
        if location == value
          organized_schools[location] << school
        end
      end
    end
  end
  organized_schools
end
