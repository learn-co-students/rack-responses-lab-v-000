class Application
  def call(env)
    resp = Rack::Response.new
    
    now = Time.now
    resp.write "#{now}\n"

    resp.write "Right now is\n"
    resp.write "The date: #{now.month}/#{now.day}/#{now.year}\n"
    resp.write "The time:\n"
    resp.write "#{now.hour}:#{now.min}:#{now.sec}\n"

    if now.hour < 12 
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
    resp.finish
  end


end
