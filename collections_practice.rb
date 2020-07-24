# your code goes here
def begins_with_r(array)
    array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
    new_array = []
    array.each do |word| 
       if word.include?("a")
        new_array << word
       end
    end
    new_array
end

def first_wa(array)
    array.find do |word| 
        if word[0] == "w" && word[1] == "a"
            word
        end
    end
end

def remove_non_strings(array)
    array.delete_if do |word|
        word.class != String 
    end
    array
end

def count_elements(array)
    array.group_by(&:itself).map do |key, value|
       key.merge({:count => value.length})
    end
end

def merge_data(keys, data)
    merged = []
    keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
    merged
end

def find_cool(cool)
    cool.select do |word|
        word.any? do |key, val|
            val == "cool"
        end
    end
end

def organize_schools(schools)
    schools_hash = {}
    schools.collect {|k,v| schools_hash[v[:location]] = []}
    schools_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end