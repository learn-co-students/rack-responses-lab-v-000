class Application

  def call(env)
    resp = Rack::Response.new
    
    time = Kernel.rand(1..24)
    
   
    if time <= 11
      resp.write "#{time}\n"
      resp.write "Good Morning!"
    else
      resp.write "#{time}\n"
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
end