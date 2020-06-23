class Application

  def call(any)
    resp = Rack::Response.new

    t = Time.now
    gm = "Good Morning!"
    ga = "Good Afternoon!"

    t.hour < 12 ? (resp.write "#{gm}") : (resp.write "#{ga}")

    resp.finish

  end

end