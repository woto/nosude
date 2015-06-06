Ckpages.enabled = true
Ckpages.root = true

Ckpages::Engine.configure do |config|
  config.middleware.use Rack::Auth::Basic do |username, password|
    username == 'user' && password == 'password'
  end  
end
