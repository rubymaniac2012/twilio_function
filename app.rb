require 'httparty'
require 'sinatra'

class App < Sinatra::Base
  get "/" do
    "Hello world!"
  end

  get '/get_task' do
    response = HTTParty.post("https://c-connect-qa4.copart.com#{params['task_name']}")
    response['message']
  end
end
