require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_supplies.each do |season, data|
  data.each do |holiday, supplies|
    supplies << supply
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies.each do |season, data|
    data.each do |holiday, supplies|
      supplies << supply
end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies.each do |season, data|
  new_var = data.values
  return new_var.flatten
end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
end
end
end


def all_holidays_with_bbq(holiday_hash)
  new_var = []
  holiday_supplies.each do |season, data|
    data.each do |holiday, supplies|
      if supplies.include?("BBQ")
       new_var << holiday
end
end
end
new_var
end
