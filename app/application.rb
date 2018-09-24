class Application
  def call(env)
    resp = Rack::Response.new
    n =  Time.now.hour

    if n > 12
      resp.write 'Good Afternoon!'
    else
      resp.write 'Good Morning!'
    end

    resp.finish

  end
end
