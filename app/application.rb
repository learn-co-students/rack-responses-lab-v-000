require 'time'
class Application
  
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour.between?(12, 23)
      resp.write "Good Afternoon!"
    else 
      resp.write "Good Morning!"
      #says good morning after 12am
    end
    resp.finish
  end
end