# your code goes here
require "pry"
def begins_with_r(tools_array)
    r_array = []
    tools_array.each do |element|
        if element.start_with?("r")
            r_array << element
        end
    end
    r_array == tools_array ? true : false
end

def contain_a(tools_array)
    tools_array.select {|element| element.match("a")}
end

def first_wa(tools_array)
    wa_array = []
    tools_array.each do |element|
        if element.to_s.start_with?("wa")
            wa_array << element
        end
    end
    wa_array[0]
end

def remove_non_strings(tools_array)
    tools_array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(tools_array)
    tools_array.group_by(&:itself)                
    .map{|key, value| key.merge(count: value.length)}
end

def merge_data(array1, array2)
    array2[0].map do |name, prop_hash|
        new_prop_hash = {}
        array1.each do |new_attr_hash|
          if new_attr_hash[:first_name] == name
            new_prop_hash = prop_hash.merge(new_attr_hash)
          end
        end
        new_prop_hash
    end
end

def find_cool(hash)
    cool_hash = []
    hash.each do |key|
        if key[:temperature] == "cool"
            cool_hash << key
        end
    end
    cool_hash
end

# def organize_schools(schools)
#     organized_schools = []
#     schools.each do |name, location_hash|
#         location_hash.group_by(&:itself)
#     end
# end
def organize_schools(schools)
    organized_schools = {}
    schools.each do |name, location_hash|
      location = location_hash[:location]
      if organized_schools[location]
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
    organized_schools
  end

