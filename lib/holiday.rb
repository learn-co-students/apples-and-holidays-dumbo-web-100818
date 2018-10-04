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
  holiday_hash[:winter][:christmas] << supply.to_s
  holiday_hash[:winter][:new_years] << supply.to_s

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply.to_s

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  supplies = holiday_hash[:winter][:christmas]
  supplies << holiday_hash[:winter][:new_years]
  supplies.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday| #callinng the holiday hash with their season as the key and holiday as the value
    puts "#{season.to_s.capitalize}:" #going to print each season to a string and capitalize the holiday
    holiday_hash[season].each do |holiday, supply| #for every season in the hash,
      holidays = holiday.to_s.split("_")           #holidays will now equal the title split into an array of the names
      holidays.collect! {|title| title.capitalize!} #permanently connecting the holiday title with it capitalized
      puts "  #{holidays.join(" ")}: #{supply.join(", ")}" #going to print the array back to a string with the supply needed for the holiday back to a string
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  bbq = []
    holiday_hash.each do |season, holiday|
      holiday.each do |holiday, supplies|
        if supplies.include?("BBQ")
        bbq << holiday
        end
      end
    end
    bbq


end
