class Application
  def call(env)
    resp = Rack::Response.new

    # time = Time.now.localtime("-04:00")
    time = Time.now

    if time.hour <=12
      resp.write "Good Morning\n"
    else
      resp.write "Good Afternoon\n"
    end
    resp.write "The time is now: #{time.hour - 4}:#{time.min}"

    resp.finish
  end
end
