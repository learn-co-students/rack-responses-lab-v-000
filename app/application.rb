class Application

     def call(env)
       resp = Rack::Response.new

       time = Time.now

       resp.write "#{time.hour}\n"

       if time.hour > 12
         resp.write "Good Afternoon\n"
         resp.write "Its friday? -- #{time.friday?}\n"
       else
         resp.write "Good Morning\n"
         resp.write "Its friday? -- #{time.friday?}\n"
       end

       resp.finish
     end
end
