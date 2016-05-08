class SpoofIp
  def initialize(app, ip)
    @app = app
    @ip = ip ||= '71.97.56.236'
  end

  def call(env)
    env['HTTP_X_FORWARDED_FOR'] =  nil
    env['REMOTE_ADDR'] = @ip
    @status, @headers, @response = @app.call(env)
    [@status, @headers, @response]
  end
end
