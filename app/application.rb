class Application
   def call(env)
    resp = Rack::Response.new
     case Time.now.hour
      when 0..12 then resp.write "Good Morning!"
      when 13..24 then resp.write "Good Afternoon!"
    end
      resp.finish
  end
end
