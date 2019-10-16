#http://ruby-doc.org/core-2.2.0/Time.html - Time Instance
    class Application

     
      def call(env)
        resp = Rack::Response.new
     
        
        if Time.now.hour > 12
          resp.write "Good Afternoon!"
        else
          resp.write "Good Morning!"
        end
     
        resp.finish
      end
     
    end