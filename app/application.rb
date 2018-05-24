class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.now
    current_hour = current_time.strftime("%H").to_i
    current_min = current_time.strftime("%M").to_i

    if current_hour >= 12 && current_min >= 0
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end #if current_hour/min

    resp.finish
  end #call

end #class Application
