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

  def feed
    puts "You feed #{name}."
    @stomach = 10
    time
  end

  def walk
    puts "You walk #{name}."
    @bladder = 0
    time
  end

  def sleep
    puts "You puts #{name} to bed."
    @asleep = true
    
    3.times do
      if @asleep
        time
      end
      if @asleep
        puts "#{name} snores, filling the room with smoke."
      end
    end
    
    if @asleep
      @asleep = false
      puts "#{name} wakes up slowly."
    end
  end

      
end
