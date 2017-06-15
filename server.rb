require 'sinatra'
require 'json'

before do
    content_type :json
end

get '/' do
    {body: "hello world"}
end

get '/hello' do
    {}
end

after do
    response.body = JSON.dump(response.body)
end