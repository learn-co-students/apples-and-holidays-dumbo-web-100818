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
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
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
  puts "#{holiday_hash.keys[0].capitalize}:"
  christmas_items=[]
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday, items|
      if (holiday==:christmas)
      christmas_items.push(items)
      end
      end
    end
  puts "  #{holiday_hash.values[0].keys[0].to_s.split("_").map(&:capitalize).join(" ")}: #{christmas_items.join(", ")}"
  new_years_items=[]
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday, items|
      if (holiday==:new_years)
      new_years_items.push(items)
      end
      end
    end
   puts "  #{holiday_hash.values[0].keys[1].to_s.split("_").map(&:capitalize).join(" ")}: #{new_years_items.join(", ")}"

  puts "#{holiday_hash.keys[1].capitalize}:"
  fourth_of_july_items=[]
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday, items|
      if (holiday==:fourth_of_july)
      fourth_of_july_items.push(items)
      end
      end
    end
   puts"  #{holiday_hash.values[1].keys[0].to_s.split("_").map(&:capitalize).join(" ")}: #{fourth_of_july_items.join(", ")}"

  puts "#{holiday_hash.keys[2].capitalize}:"
  thanksgiving_items=[]
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday, items|
      if (holiday==:thanksgiving)
      thanksgiving_items.push(items)
      end
      end
    end
   puts"  #{holiday_hash.values[2].keys[0].to_s.split("_").map(&:capitalize).join(" ")}: #{thanksgiving_items.join(", ")}"

  puts "#{holiday_hash.keys[3].capitalize}:"
  memorial_items=[]
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday, items|
      if (holiday==:memorial_day)
      memorial_items.push(items)
      end
      end
    end
   puts"  #{holiday_hash.values[3].keys[0].to_s.split("_").map(&:capitalize).join(" ")}: #{memorial_items.join(", ")}"
end
def all_holidays_with_bbq(holiday_hash)
answer=[]
 holiday_hash.each do |seasons, holidays|
  holidays.each do |days, items|
    if (items.include?("BBQ"))
      answer.push(days)
      end
  end
end
answer
end







