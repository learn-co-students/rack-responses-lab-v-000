class Application

  def call(env)
    resp = Rack::Response.new
    require 'time'
    noon = Time.parse "12:00"
    current_time = Time.now

    if current_time < noon
      then resp.write "Good Morning!"
    end
    if current_time > noon
      then resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
