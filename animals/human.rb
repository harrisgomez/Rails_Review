require_relative 'mammal'

class Human < Mammal
    def word
        'i am human'
    end
end

human = Human.new
puts human.string
