class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new

    if time.strftime("%k:%M") < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end

# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". 
# Remember that getting the time may return results in 24 hour time! 
# Anytime on or after 12 is the afternoon.

#   def call(env)
#     resp = Rack::Response.new
#     num_1 = Kernel.rand(1..20)
#     num_2 = Kernel.rand(1..20)
#     num_3 = Kernel.rand(1..20)

#     resp.write "#{num_1}\n"
#     resp.write "#{num_2}\n"
#     resp.write "#{num_3}\n"

#     if num_1 == num_2 && num_2 == num_3
#       resp.write "You Win"
#     else
#       resp.write "You Lose" 
#     end

#     resp.finish
#   end