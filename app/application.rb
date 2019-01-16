require 'pry'

class Application
  
  def call(env)
    # I now know that the time that the tests pass to this method is Time.now
    # if Time.now < noon, resp.write "Good Morning", else "Good AFternoon!"
    # I could also write: if Time.now.strftime("%H:%M:%S") < "12:00:00"
    # See https://ruby-doc.org/core-2.2.0/Time.html#method-i-strftime
    
    resp = Rack::Response.new
    
    if Time.now.hour < 12 # Use <, not <=, or "12:30:00".hour will output "Good Morning!"
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
  
end