class Application

    def call(env)
        resp = Rack::Response.new

        time = Time.new(year=Time.now.year, month=Time.now.month, day=Time.now.day, hour=Time.now.hour, min=Time.now.min).hour

        if time < 12
            resp.write "Good Morning!"
        elsif time > 12
            resp.write "Good Afternoon!"
        end
        resp.finish
    end

end