# your code goes here

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



#def count_elements

#end

#def merge_data

#end

#def find_cool

#end

#def organize_schools

#end
