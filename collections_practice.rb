require "pry"

def begins_with_r(programs)
  programs.all? {|word| word.start_with?("r")}
end

def contain_a(letter)
  letter.select do |word| 
    word.include?("a")
  end
end

def first_wa(array)
     array.detect do |word|
     word[0,2] == "wa"
   end
 end

def remove_non_strings(array)
  array.delete_if do |string|
    string.kind_of?(String) == false
  end
end

def count_elements(array)
  array.each do
  end
end

def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    otherObject = data[0][matchingProperty]
    
    otherObject.each do |property,value|
      object[property] = value
    end
  end
end

def find_cool(cool)
     cool.select {|i| i.any? {|a,k| k == "cool"}} 
 end

def organize_schools(location)

end