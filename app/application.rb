class Application

  def call(env)
    resp = Rack::Response.new
    greeting = Time.now.hour < 12 ? "Good Morning!" : "Good Afternoon!"
    resp.write "Time now is #{Time.now}\n"
    resp.write greeting
    resp.finish
  end
end

#run rackup config.ru to test.
#visit localhost:9292

# class Application
#
#   def call(env)
#     resp = Rack::Response.new
#
#     num_1 = Kernel.rand(1..2)
#     num_2 = Kernel.rand(1..2)
#     num_3 = Kernel.rand(1..2)
#
#     resp.write "#{num_1}\n"
#     resp.write "#{num_2}\n"
#     resp.write "#{num_3}\n"
#
#     if num_1==num_2 && num_2==num_3
#       resp.write "You Win"
#     else
#       resp.write "You Lose"
#     end
#
#     resp.finish
#   end
# end
