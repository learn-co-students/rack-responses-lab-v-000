#require 'pry'

class Application

    def call(env)
        resp = Rack::Response.new
        dt = Time.now
        puts " The hour is #{dt.hour}"
        if dt.hour.to_i <= 12
            resp.write "Good Morning"
        else
            resp.write "Good Afternoon"
        end

        resp.finish
    end


end