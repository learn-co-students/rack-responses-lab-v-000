class Application
   def call(_env)
      resp = Rack::Response.new

      if Time.now.hour < 12
         resp.write 'Good Morning!'
      else
         resp.write 'Good Afternoon!'
      end

      # Time.now.hour < 12 ? (resp.write 'Good Morning!') : (resp.write 'Good Afternoon!')
      resp.finish
   end
end
