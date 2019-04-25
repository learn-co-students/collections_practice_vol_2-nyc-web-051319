# your code goes here
def begins_with_r(array)
  array.all? {|e| e.start_with?('r') }
end

def contain_a(array)
  array.map {|e| e if e.include?('a') }.compact
end

def first_wa(array)
  array.find { |e| e if e.match(/wa/)}
end

def remove_non_strings(array)
  array.delete_if {|e| e != e.to_s }
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0 
    name = hash[:name] 
    array.each do |hash2|
      if hash2[:name] == name
        hash[:count] += 1 
      end
    end
  end.uniq
end

def merge_data(data1, data2)
  data2[0].map do |name, hash1| 
    new_hash = {}
    data1.each do |hash2| 
      if hash2[:first_name] == name
        new_hash = hash1.merge(hash2)
      end
    end
    new_hash
  end
end
        
def find_cool(array)
  array.map {|element| element if element[:temperature] == 'cool'}.compact
end

def organize_schools(array)
  new_schools = {}
  array.each do |name, hash|
    location = hash[:location]
    if new_schools[location]
      new_schools[location] << name 
    else 
      new_schools[location] = []
      new_schools[location] << name 
    end
  end
  new_schools
end