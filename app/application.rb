class Application
  def call(env)
    resp = Rack::Response.new

    if Time.now.hour < 12
      resp.write "The time is now #{Time.now.strftime("%l:%M %P")}. \n"
      resp.write "Good Morning!"
    else
      resp.write "The time is now #{Time.now.strftime("%l:%M %P")}. \n"
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
