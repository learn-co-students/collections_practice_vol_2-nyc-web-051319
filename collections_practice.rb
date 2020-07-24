# your code goes here
require "pry"

def begins_with_r(array)
  count = 0;

  array.each do |tool|
    if tool.start_with?("r")
      count += 1
    end
  end

  if count == array.length
    true
  else
    false
  end
end

def contain_a (array)
  newarray = []
  array.each do |tool|
    if tool.include?("a")
      newarray << tool
    end
  end
  newarray
end

def first_wa(array)
  array.each do |tool|
    if tool.to_s.start_with?("wa")
      return tool
    end
  end
end

def remove_non_strings(array)
  newarray = []
  array.each do |element|
    if element.is_a? String
      newarray << element
    end
  end
  newarray
end

def count_elements(array)
  counts = Hash.new(0)
  array.each { |element| counts[element] += 1 }
  return_array = []
  counts.each do |element,num|
    element.each { |key, val| return_array << {key => val, :count => num} }
  end
  return_array
end

def merge_data(keys, data)
  merged_hashes = []

  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end

    merged_hashes
  end
  merged_hashes
end

def find_cool(cool)
  return_array = []
  cool.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        return_array << hash
      end
    end
  end
  return_array
end

def organize_schools(schools)
  school_hash = {}

  schools.values.each do |location|
    school_hash[location.values[0]] = []
  end
  schools.each do |school, location|
    school_hash[location.values[0]] << school
  end

  school_hash
end
