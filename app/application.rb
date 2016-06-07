class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.hour
    #resp.write "#{time}"

    if time < 12
      resp.write "good Morning"

    else
      resp.write "good Afternoon"

   end
    resp.finish
  end
end