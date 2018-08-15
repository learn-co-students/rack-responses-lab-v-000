class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now
    # returns => 2018-8-15 12:52:20 -600 
    # t.hour parses out the hour -- no need to convert .to_i

    if t.hour < 12 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end


