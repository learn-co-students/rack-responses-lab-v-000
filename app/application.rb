class Application

  def call(env)
    resp = Rack::Response.new

    now = Time.now
    today = Date.today.to_time

    morning = today.beginning_of_day
    noon = today.noon
    afternoon = today.change( hour: 13 )

    if (morning..noon).cover? now
      resp.write "Good Morning!"
    elsif (afternoon..evening).cover? now
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end

# num_1 = Kernel.rand(3..20)
# num_2 = Kernel.rand(3..20)
# num_3 = Kernel.rand(3..20)
#
# resp.write "#{num_1}\n"
# resp.write "#{num_2}\n"
# resp.write "#{num_3}\n"
#
# if num_1==num_2 && num_2==num_3
#   resp.write "You Win"
# else
#   resp.write "You Lose"
# end
