class Application
  def call(env)

    start = Time.now
    current_time = Time.now - start
    if Time.now.hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
