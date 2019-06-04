    class Application
     
      def call(env)
        resp = Rack::Response.new
     
        time = Time.now
     
        if time <= Time.new(2015,11,27,9,30)
          resp.write "Good Morning!"
        else
          resp.write "Good Afternoon!"
        end
     
        resp.finish
      end
     
    end