class Application

  def call(env)
    resp = Rack::Response.new  #mandatory to start

    current_time = Time.now.hour #initially i used .new, however, if i used .now, the code works

    #resp.write "#{current_time}\n"
    if current_time > 12
        resp.write "Afternoon"
      else
        resp.write "Morning"
    end
    resp.finish #mandatroy to end
  end

end

#If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.


#     rackup config.ru



#resp = Rack::Response.new #basic startup to receive the clients request
#
#num_1 = Kernel.rand(1..20)   #The Kernel module is included by class Object, so its methods are available in every Ruby object.
#num_2 = Kernel.rand(1..20)   # aka Kernel has nested methods within the module, this case we are using random
#num_3 = Kernel.rand(1..20)
#
#resp.write "#{num_1}\n"       #lets show the user what numbers they received
#resp.write "#{num_2}\n"       #remember, resp.write is used rather than puts
#resp.write "#{num_3}\n"       #The \ns are just a special character which gets rendered by the browser as a new line.
#
#if num_1==num_2 && num_2==num_3
#  resp.write "You Win"   #in rack we use resp.write to respond to the clients request rather than puts
#else
#  resp.write "You Lose"
#end
#
#resp.finish    #basic finish to rack code
