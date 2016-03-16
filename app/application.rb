class Application

  def call(env)
    resp = Rack::Response.new

    if before_noon?
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

  private
  def now
    Chronic.parse 'now'
  end

  def noon_today
    Chronic.parse 'today noon'
  end

  def before_noon?
    now < noon_today
  end

  def past_noon?
    now > noon_today
  end
end
