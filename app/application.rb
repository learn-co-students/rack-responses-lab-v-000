

class Application


  def call(env)
    resp = Rack::Response.new

    time = Time.now
    morn = Time.new()
    resp.write "#{time}"

    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish


  end

end