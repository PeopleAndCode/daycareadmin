require 'sinatra/base'
require 'json'

class App < Sinatra::Base
    set :port, 3000

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
end