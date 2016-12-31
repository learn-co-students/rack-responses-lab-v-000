require 'pry'

class Application

  #greet user good morning if morning and good afternoon if afternoon
    def call(app)
      #binding.pry
      #input = Time.now
      #input = gets.strip
      time = Time.now
      if Time.now.hour <= 12
        puts "Good Morning"
      else
        puts "Good Afternoon"
    end
  end
end
