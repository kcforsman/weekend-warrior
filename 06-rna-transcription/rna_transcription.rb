class Complement
  def self.of_dna rna
    rna.length.times do | index |
      if rna[index] == "C"
        rna[index] = "G"
      elsif rna[index] == "G"
        rna[index] = "C"
      elsif rna[index] == "T"
        rna[index] = "A"
      elsif rna[index] == "A"
        rna[index] = "U"
      else
        raise ArgumentError.new(
          "Wrong characters"
        )
      end
    end
    rna
  end

  def self.of_rna dna
    dna.length.times do | index |
      if dna[index] == "G"
        dna[index] = "C"
      elsif dna[index] == "C"
        dna[index] = "G"
      elsif dna[index] == "A"
        dna[index] = "T"
      elsif dna[index] == "U"
        dna[index] = "A"
      else
        raise ArgumentError.new(
          "Wrong characters"
        )
      end
    end
    dna
  end
end
