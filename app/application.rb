class Application
  def call(env)
    resp = Rack::Response.new

    hour = Time.now.to_s.split(' ')[1]
    if hour.split(":")[0].to_i < 12
      resp.write "Good Morning! It is #{hour}"
    else
      resp.write "Good Afternoon! It is #{hour}"
    end

    resp.finish
  end
end
