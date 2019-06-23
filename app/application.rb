class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.now
    #resp.write "#{current_time}\n"
    #resp.write "#{current_time.hour}\n"

    if current_time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
