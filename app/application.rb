class Application
attr_accessor :now

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour.between?(1,11)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
