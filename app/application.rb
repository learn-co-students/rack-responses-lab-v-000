class Application

    def call(env)
        resp = Rack::Response.new

        resp.write "Good Morning" #if Time.now <= 12:00
        resp.write "Good Afternoon" #if Time.now > 12:00

        resp.finish
    end

end
