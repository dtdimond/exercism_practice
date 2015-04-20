class Hamming
  
  # Calculates the Hamming Distance of two DNA strands 
  # Params:
  # +strand_one+:: string representation of a DNA strand. Ex: "GATACA"
  # +strand_two+:: string representation of a DNA strand. Ex: "TADGCD"
  def self.compute(strand_one,strand_two)
    if strand_one.length != strand_two.length
      return 0
    end

    hamming_distance = 0
    strand_one.split("").zip(strand_two.split("")).each do |one,two|
      if one != two
        hamming_distance += 1
      end
    end

    return hamming_distance
  end
end
