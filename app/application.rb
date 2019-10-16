require 'time'
class Application

  def call(env)
    resp = Rack::Response.new

    
    Time.now.hour<12 ? resp.write("Good Morning!") : resp.write("Good Afternoon!")
    #resp.write "Hello, World"
    resp.finish
  end

end