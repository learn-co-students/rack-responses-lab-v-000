class Application
    def call(env)
        resp = Rack::Response.new
        datetime = Time.now
        time = datetime.to_s.split(" ")[1]
        if time[0..1].to_i > 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end


        resp.finish
    end
end
