class Application
 
    def call(env)
      resp = Rack::Response.new
      t = Time.now.hour
        if t < 12
        resp.write "Good Morning!"
        else
        resp.write "Good Afternoon!" 
        end
      resp.finish
    end
   
end
  



#Translate a command line Ruby app to a dynamic web app
#Use the #write method in a Rack::Response object 
#to make a dynamic web app in Rack