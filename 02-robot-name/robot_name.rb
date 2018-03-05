class Robot
  attr_reader :name
  def initialize
    @name = new_name
  end

  def new_name
    letters = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    digits = %w(0 1 2 3 4 5 6 7 8 9)
    name = ""
    2.times { name << letters.sample }
    3.times { name << digits.sample }
    name
  end

  def reset
    @name = new_name
  end
end
