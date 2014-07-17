class Sample
	def hello
		puts "Hello, World!"
	end
end

s = Sample.new
s.hello

class PersonalChef
    
    def make_toast(color)
        if color.nil
            puts "How am I supposed to make nothingness toast?"
        else
            puts "Making your toast #{color}!"
        end
        return self
    end
    
    def make_milkshake(flavor)
        puts "Shaking your #{flavor} milk!"
        return self
    end
    
    def make_eggs(quantity)
        quantity.times do
            puts "Making an egg!"
        end
        puts "All done!"
        return self
    end
    
    def gameplan(meals)
        meals.each do |meal|
            puts "We'll have #{meal}..."
        end
        all_meals = meals.join(", ")
        puts "In summary: #{all_meals}"
    end
    
    def inventory
        produce = {apples: 3, oranges: 1, carrots:12}
        produce.each do |item, quantity|
            puts "There are #{quantity} #{item} in the fridge."
        end
    end
    
    def water_status(minutes)
        if minutes < 7
            puts "The water is not boiling yet!"
        elsif minutes==7
            puts "It's just barely boiling"
        elsif minutes==8
            puts "It's boiling!"
        else
            puts "Hot! Hot! Hot!"
        end
        return self
    end
    
    def countdown(counter)
        until counter == 0
            puts "The counter is #{counter}"
            counter = counter - 1
        end
        return self
    end

end

frank = PersonalChef.new
frank.make_toast('burnt').make_eggs(3)
frank.make_milkshake('strawberry')
frank.gameplan(["chicken", "beef"])
frank.inventory
frank.water_status(5)
frank.water_status(7)
frank.water_status(8)
frank.water_status(9)




class Butler
    def open_front_door(whichDoor)
        puts "The #{whichDoor} door, my liege!"
        return self
    end
end

jeeves = Butler.new
jeeves.open_front_door('front')
jeeves.open_front_door('back')
jeeves.open_front_door('closet')



