class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.now

    if
      current_time.hour.between?(0,12)

      resp.write "Good Morning!"

    elsif
      current_time.hour.between?(12,17)

      resp.write "Good Afternoon!"

    else
      resp.write "Good Evening!"
    end

    resp.finish
  end

end
