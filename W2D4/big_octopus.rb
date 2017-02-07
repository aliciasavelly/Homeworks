fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fish_arr)
  longest_fish = ""

  fish_arr.each do |fish1|
    fish_arr.each do |fish2|
      if fish2.length > fish1.length && fish2.length > longest_fish.length
        longest_fish = fish2
      end
    end
  end
  longest_fish
end

p sluggish_octopus(fish_arr) == 'fiiiissshhhhhh'

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    mid = count / 2
    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)

    sorted = Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)
  end
end

def dominant_octopus(fish_arr)
  prc ||= Proc.new { |x, y| x.length <=> y.length }
  fish_arr.merge_sort(&prc).last
end

p dominant_octopus(fish_arr) == 'fiiiissshhhhhh'

def clever_octopus(fish_arr)
  longest = fish_arr.first

  fish_arr.each do |el|
    longest = el if el.length > longest.length
  end

  longest
end

p clever_octopus(fish_arr) == 'fiiiissshhhhhh'

tiles_array = ["up", "right-up", "right", "right-down",
              "down", "left-down", "left",  "left-up" ]

def slow_dance(tile_direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == tile_direction
  end
end

p slow_dance("up", tiles_array) == 0
p slow_dance("right-down", tiles_array) == 3

tiles_hash = {"up" => 0,
              "right-up" => 1,
              "right" => 2,
              "right-down" => 3,
              "down" => 4,
              "left-down" => 5,
              "left" => 6,
              "left-up" => 7}

def fast_dance(tile_direction, tiles_hash)
  tiles_hash[tile_direction]
end   

p fast_dance("up", tiles_hash) == 0
p fast_dance("right-down", tiles_hash) == 3
