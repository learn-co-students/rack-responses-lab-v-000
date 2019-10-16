class Application
  def call(env)
    resp = Rack::Response.new

    #resp.write "It's  now #{Time.now}\n"
    t = Time.now
    if t.hour <=12 
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end
end
