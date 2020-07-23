class Monster 

  attr_reader :name , :actions 

    def initialize(name) 
        @name = name 
        @actions = {
            screams: 0,
             scares: 0,
             hide: 0
        }
    end 

    def say(&block)
    print "#{name} says...."
    yield     
    end 

    def scream (&block)
        actions[:screams] += 1
    print "#{name} screams!"
        yield
    end 

    def scares(&block)
        actions[:scares] += 1 
        print "#{name} scares you! "

        yield 
    end 

    def hide(&block)
        actions[:hide] += 1 
        print "#{name}hides ! "

        yield self if block_given?
    end 

    def print_scoreBoard
            puts "--------------------"
            puts "#{name} scoreboard"
            puts "--------------------"
            puts "- Screams: #{actions[:screams]}"
            puts "- Scares: #{actions[:scares]}"
            puts "- Hides: #{actions[:hide]}"
      
    end 

    def inspect
    "<#{name} #{actions}"
    end 

end 


monster = Monster.new("fluffy")
monster.say { puts "welcome to my home. !" }
puts monster.actions

monster.scream do 
puts "boo !"
end 

monster.scares do 
    puts "keep out !"
    end 

monster.hide do |m|
puts "Run away and hide"
puts m.inspect    
end

puts monster.actions

#monster1 = Monster.new("Alan")

#puts monster.print_scoreBoard
#puts monster1.print_scoreBoard