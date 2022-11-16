class Player

  attr_accessor :name, :lives

  def initialize
    @name = set_name()
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def set_name
    puts "Welcome Player. Please enter your name."
    gets.chomp
  end
  
end