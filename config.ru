require_relative './boot'
# run Main

class MyMiddleware

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    body = [body.first + ' (I was hijacked!)']
    [status, headers, body]
  end

end

use MyMiddleware

run ->(env){
  [
    200, # Status Code
    { 'content-type' => 'text/plain' }, # Headers
    ['Hello World'] # Body
  ]
}
