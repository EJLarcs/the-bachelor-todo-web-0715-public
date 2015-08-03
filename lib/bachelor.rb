require 'pry'

def get_season_array(data, season_name)
  data[season_name]
end

def get_first_name_of_season_winner(data, season)
  contestants_array = get_season_array(data, season)

  winner_hash = contestants_array.find do |contestant_hash|
    contestant_hash["status"] == "Winner"
  end

  winner_hash["name"].split(" ").first

  # name = nil 
  # first_name = nil
  # data.each do |key1, value1|
  #   if key1 == season 
  #     value1.each do |key_value_pair|
  #       if key_value_pair["status"] == "Winner" 
  #        name = key_value_pair["name"] 
  #       end   
  #     end
  #     name
  #     name_array = name.split(" ")
  #     first_name = name_array.first     
  #   end
  # end
  # first_name
end

def get_contestant_name(data, occupation)
  # code here
  name = nil 
  data.each do |key1, value1|
    value1.each do |key_value_pair|
      if key_value_pair["occupation"] == occupation
        name = key_value_pair["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  how_many = [] 
  data.each do |key1, value1|
    value1.each do |key_value_pair|
      if key_value_pair["hometown"] == hometown
        how_many << key_value_pair["name"]
      end
    end
  end
  how_many.count
end

#iterate over and find ... if found... select and put into an array
#counting how many items in the array 

def get_occupation(data, hometown)
  # code here
  occupation = nil 
  data.each do |key1, value1|
    value1.each do |key_value_pair|
      if key_value_pair["hometown"] == hometown
        occupation = key_value_pair["occupation"]
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  age = [] 
  data.each do |key1, value1|
    if key1 == season 
      value1.each do |key_value_pair|
        if key_value_pair["age"] 
          age << key_value_pair["age"].to_i
        end
      end
    end
  end
  age
  array_num = age.length
  total_age = age.inject(:+)
  mean = total_age.to_f / array_num.to_f
  mean.round
end






#def old_method
  # code here
 # age = [ ] 
  #data.each do |key1, value1|
   # if key1 == season 
    #  value1.each do |key_value_pair|
     #   key_value_pair.each do |key2, value2|
      #    if key2 == "age"
       #     age << value2
        #  end
       # end
     # end
   # end
 # end
 # age
#end

  # code here
 
