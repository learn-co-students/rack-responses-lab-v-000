class Application

  def call(env)
    resp = Rack::Response.new

    t1 = Time.new(2018, 04, 11, 12, 0, 0)

    if Time.now < t1
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
end
