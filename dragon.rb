# Create a living dragon

puts "\nHi there, this is my pet dragon.\n\n"

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stomach = 10 # Full
    @bladder = 0 # No need to go

    puts "#{name} is born."
  end
  
end
