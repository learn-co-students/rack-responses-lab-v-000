require 'pry'

class Application

  #greet user good morning if morning and good afternoon if afternoon
    def call(app)
      resp = Rack::Response.new
      time = Time.now
      if Time.now.hour <= 12
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
    end
    resp.finish
  end
end
