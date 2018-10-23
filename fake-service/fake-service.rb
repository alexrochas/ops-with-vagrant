require "sinatra"
require "sinatra/multi_route"

set :bind, '0.0.0.0'

route :get, :post, :put, :delete, :patch, "/*" do
  puts "Incoming request to #{request.path_info} with body #{request.body.read.to_s} and query params #{params}"
  {:message => ENV['MESSAGE']}.to_json
end
