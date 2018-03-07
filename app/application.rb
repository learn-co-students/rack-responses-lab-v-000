class Application
    def call(env)
      resp = Rack::Response.new

      time = Time.now.hour
      noon = Time.new(2018, 03, 07, 12, 0, 0, "-05:00").hour

      resp.write "The current time is #{time}\n"

      if time < noon
        resp.write "Good Morning!\n"
      elsif time > noon
        resp.write "Good Afternoon!\n"
      end
      resp.finish
    end
  end
