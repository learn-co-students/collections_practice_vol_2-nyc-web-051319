# your code goes here

##begins_with_r Return true if every element of the tools array
#starts with an "r" and false otherwise.

def begins_with_r(strings)
  strings.all? {|string| string[0] == "r"}
end

#return all elements that contain the letter 'a'

def contain_a(strings)
  strings.select do |string|
    string.include?("a")
  end
end

#Return the first element that begins with the letters 'wa'

def first_wa(strings)
  strings.find do |string|
    string[0] =="w" && string[1] == "a"
  end
end

#remove anything that's not a string from an array

def remove_non_strings(strings)
  strings.select do |string|
    string.class == String
  end
end

#count how many times something appears in an array

def count_elements(array)
  new_array = []
  for person in array.uniq
     new_array.push{:name => person[:name], :count => array.count(name)}
  end
end
