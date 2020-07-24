require 'pry'

def begins_with_r(array)
array.all? do |x|
x[0] == "r"
end
end

def contain_a(array)
  array.select do |x|
  x.include?("a")
end
end

def first_wa(array)
  array.detect do |x|
    x[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.is_a?(String) == false
  end
end

def count_elements(array)
  new_array =[]
  a = 0
  b = 0

  array.each  do |hash_name|
hash_name[:count] = 0
  #
  name = hash_name[:name]
# if hash_name[:name] == "blake"
#  b +=1
# elsif hash_name[:name] == "ashley"
#  a +=1
array.each do |hash|

   if name == hash[:name]
     hash_name[:count] +=1

end
end
end.uniq

end

def merge_data(keys, data)
  merged = []
  keys.each {|x| data.first.map {|k,v| if x.values[0] == k then merged << x.merge(v) end}}
  merged
end


def find_cool(cool)
    cool.select {|x| x.any? {|k,v| v == "cool"}}
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|kk,vv| if k == vv[:location] then v << kk  end}}
end
