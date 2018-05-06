class Complement
  def self.of_dna rna
    raise ArgumentError if !(rna.split("") - ["C", "G", "T", "A"]).empty?
    complement = ""
    rna.length.times do | index |
      complement << "G" if rna[index] == "C"
      complement << "C" if rna[index] == "G"
      complement << "A" if rna[index] == "T"
      complement << "U" if rna[index] == "A"
    end
    complement
  end

  def self.of_rna dna
    raise ArgumentError if !(dna.split("") - ["C", "G", "U", "A"]).empty?
    complement = ""
    dna.length.times do | index |
      complement << "G" if dna[index] == "C"
      complement << "C" if dna[index] == "G"
      complement << "T" if dna[index] == "A"
      complement << "A" if dna[index] == "U"
    end
    complement
  end
end
