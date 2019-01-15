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
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
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
  end.uniq
end

def find_cool(cool)
     cool.select {|i| i.any? {|a,k| k == "cool"}} 
 end

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