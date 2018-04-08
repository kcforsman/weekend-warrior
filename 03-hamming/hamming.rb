class Hamming
  def self.compute strand_1, strand_2
    return 0 if strand_1 == strand_2
    length_1 = strand_1.length
    raise ArgumentError.new("strands not even in length") if length_1 != strand_2.length
    distance = 0
    length_1.times do |x|
      if strand_1[x] != strand_2[x]
        distance += 1
      end
    end
    distance
  end
end
