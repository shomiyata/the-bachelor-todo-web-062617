require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_key, contestant_array|
    if season == season_key
      contestant_array.each do |contestant_hash, contestant_hash_index|
        if contestant_hash["status"] == "Winner"
        return contestant_hash["name"].split(" ").first
      end
    end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_key, contestant_array|
      contestant_array.each do |contestant_hash, contestant_hash_index|
        if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
    end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_key, contestant_array|
      contestant_array.each do |contestant_hash, contestant_hash_index|
        if contestant_hash["hometown"] == hometown
        counter += 1
      end
      end
    end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season_key, contestant_array|
      contestant_array.each do |contestant_hash, contestant_hash_index|
        if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages_sum = 0
  counter = 0
  data.each do |season_key, contestant_array|
    if season == season_key
      contestant_array.each do |contestant_hash, contestant_hash_index|
        ages_sum += contestant_hash["age"].to_f
        counter += 1
      end
    end
  end
  return (ages_sum / counter).round
end
