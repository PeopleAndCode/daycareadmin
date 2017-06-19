require 'sinatra'
require 'json'

set :port, 3000
set :bind, "0.0.0.0"

before do
    content_type :json
end

get '/' do
    {
        body: "hello world"
    }
end

get '/hello' do
    {
        body: "No message"
    }
end

get '/fail' do
    status 404
    {
        body: "Not Found"
    }
end

after do
    response.body = JSON.dump(response.body)
end