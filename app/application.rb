
class Application

    def call(env)
      #env is handled by ruby

    resp = Rack::Response.new

    time = 12

      if  Time.now.hour  <= time
          #note....Time.now only return instance of the Time class... Target the hour(interger)
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
     end
      resp.finish

  end

end
