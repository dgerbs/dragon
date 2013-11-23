# Create a living dragon

puts "\nHi there, this is my pet dragon.\n\n"

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stomach = 10 # Full
    @colon = 0 # No need to go

    puts "#{name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stomach = 10
    time
  end

  def walk
    puts "You walk #{@name}."
    @colon = 0
    time
  end

  def sleep
    puts "You put #{@name} to bed."
    @asleep = true
    
    3.times do
      if @asleep
        time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def play
    puts "You toss #{@name} up into the air."
    puts "#{@name} giggles, which singes your eyebrows."
    time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private

  def hungry?
    @stomach <= 2
  end

  def poopy?
    @colon >= 8
  end

  def time
    if @stomach > 0
      @stomach = @stomach - 1
      @colon = @colon + 1
    else
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!!"
      end
      puts "#{@name} is starving! In desperation, he ate you!"
      exit
    end

    if @colon >= 10
      @colon = 0
      puts "Whoops! #{@name} had an accident."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!!"
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

# Give dragon actions

pet = Dragon.new 'Norbert'
pet.feed
pet.play
pet.walk
pet.sleep
pet.rock
pet.sleep
pet.sleep
pet.walk
pet.feed
pet.sleep
pet.sleep
pet.sleep
pet.play
pet.sleep
pet.sleep




