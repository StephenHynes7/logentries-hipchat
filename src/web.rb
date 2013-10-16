require 'sinatra'

api_token = '3d17951ccd1b5ab63a79f45137d033'
client = HipChat::Client.new(api_token)
room_id ='310310'
username = 'StephenHynes'

get '/' do
  puts "Hello World!"
  client[room_id].send(username, 'Hello!')
  "Hello World!"
end

post '/alert' do
  puts params
  payload = JSON.parse(params[:payload])
  puts payload
  message = "Alert %s from Log %s , log event , %s occured" % [payload['alert']['name'], payload['log']['name'], payload['event']['m']]
  puts message
  client[room_id].send(username, message, color: 'red', notify: 1)
end
