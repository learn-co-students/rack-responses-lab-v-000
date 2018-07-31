class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now.localtime
    less_date = time.to_s.split(" ")[1]
    hour = time.hour
    resp.write "#{less_date}\n"
    if hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
