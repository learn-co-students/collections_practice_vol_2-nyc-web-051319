require 'pry'

def begins_with_r(arg)
arg.all? do |x|
x[0] == "r"
end
end

def contain_a(arg)
  arg.select do |x|
  x.include?("a")
end
end

def first_wa(arg)
  arg.detect do |x|
    x[0,2] == "wa"
  end
end

def remove_non_strings(arg)
  arg.delete_if do |x|
    x.is_a?(String) == false
  end
end

def count_elements(arg)
  new_array =[]
binding.pry
  arg.each  do |x|
x.push(counter)
new_array << x
  end
new_array
end
