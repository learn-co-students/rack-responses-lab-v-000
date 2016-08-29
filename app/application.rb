class Application

def call(env)
  resp = Rack::Response.new

  time1 = Time.now

  resp.write "It is: #{time1}"

  if time1.hour < 12
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end

  resp.finish
end

end
