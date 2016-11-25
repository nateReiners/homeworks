FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus
  fish_arr = FISH.dup
  long_fish = ""
  FISH.each_with_index do |fish1, idx1|
    fish_arr.each_with_index do |fish2, idx2|
      unless idx1 == idx2
        case fish1.length <=> fish2.length
        when -1
          long_fish = fish2
        when 1
          long_fish = fish1
        end
      end
    end
  end
  long_fish
end

def dominant_octopus(fish_arr)
  return fish_arr.first if fish_arr.length <= 1
  pivot_fish = fish_arr.shift
  short_fish = fish_arr.select { |fish| fish.length < pivot_fish.length }
  long_fish = fish_arr.select { |fish| fish.length >= pivot_fish.length }
  dominant_octopus(long_fish)
end

def clever_octopus
  longest_fish = FISH.first
  FISH.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def dancing_octopus

end

p sluggish_octopus

p dominant_octopus(FISH)

p clever_octopus
