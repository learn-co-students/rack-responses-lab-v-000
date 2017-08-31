class Application
  def call(env)
      resp = Rack::Response.new

    time =  Time.now.strftime("%H")


    if time.to_i < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end


      resp.finish
    end

end
