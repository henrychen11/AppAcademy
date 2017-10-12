# quadratic search
# O(n^2)
def quadratic(fishes)
  fishes.each_with_index do |fish1, idx1|
    fishes.each_with_index do |fish2, idx2|
      if fish1[idx1] > fish[idx2]
      max_length = fish1.length
    end

    max_length
  end

end

# n log n search
class Array
  #this should look familiar
  def merge_sort(&prc)
    prc ||= Proc.new {|a,b| a<=> b}
    return self if self.count <= 1
    mid = self.length / 2
    left = self[0...mid].merge_sort(&prc)
    right = self[mid..-1].merge_sort(&prc)
    Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    result = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        result << left.shift
      when 0
        result << left.shift
      when 1
        result << right.shift
      end
    end
    result.concat(left.concat(right))
  end
end

def nlogn(fishes)
  # sort the array longest to shortest
  prc = Proc.new { |x, y| y.length <=> x.length }
  #return the first element
  fishes.merge_sort(&prc)[0]
end

# linear search
def linear(fishes)
  #hold the biggest fish
  biggest_fish = fishes.first

  fishes.each do |fish|
    if fish.length > biggest_fish.length
      #update the biggest fish
      biggest_fish = fish
    end
  end

  biggest_fish

end

# linear octopus dance
# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end

# constant octopus dance
#use a hash for constant lookup
tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end
