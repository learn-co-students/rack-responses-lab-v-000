class Application
  
  def call(env)
    if Time.now.hour < 12
      [200, {"content-type" => "text/html"}, ["Good Morning"]]
    else
      [200, {"content-type" => "text/html"}, ["Good Afternoon"]]
    end
  end
  
end