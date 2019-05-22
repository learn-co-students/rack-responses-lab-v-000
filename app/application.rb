class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    puts "#{time.hour}\n"

    if time.hour >= 0 && time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
