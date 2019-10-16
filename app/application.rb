class Application
  def call(env)
    resp = Rack::Response.new

    hour =Time.now.to_s.split(" ")[1].split(":")[0].to_i

    if hour < 12 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end