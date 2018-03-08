class Application

  def call(env)
    resp = Rack::Response.new

    if (0..11).include?(Time.now.hour)
      resp.write 'Good Morning!'
    else
      resp.write 'Good Afternoon!'
    end
    resp.finish
  end
end
