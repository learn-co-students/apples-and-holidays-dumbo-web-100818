require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter]. each do |holiday, array|
    array << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, array|
    array << supply 
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
  
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
      data.each do |holiday, items|
      celebration = holiday.to_s.split("_")
        celebration.collect do |words|
          words.capitalize!
        end
        celebration = celebration.join(" ")
       items = items.join(", ")
       puts "  #{celebration}: #{items}"
      end
    end
end

#Since we're formatting a list where iterations will print out multiple lines, the iteration through the seasons should be 'puts' out first.
#The second tier of iteration sets a 'split' collection of holidays (into respective arrays) to a variable for easy access/storage. We can then act on that variable of 'celebration' to '.collect' (which automatically stores) all of the holidays and '.capitalize' them.
# Now that each word is a seperate element in an array, we set 'celebration' equal to a version of itself where we use '.join(" ")' to put the capitalized words back together
# Our items are already capitalized, so we only need to use 'join(", ")' again to turn them into a string with a comma and space. Storing them in a variable makes for easy access 
# We then 'puts' the value of 'celebration' and 'items' in the correct format.  

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |day, array|
      if array.include?("BBQ")
        holiday_array.push(day)
      end
end
end
holiday_array
end







