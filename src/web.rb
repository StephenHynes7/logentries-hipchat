require 'sinatra'

api_token = 'API_VERSION_ONE_TOKEN'
client = HipChat::Client.new(api_token)
room_id ='ROOM_ID'
username = 'Mention_Name'

get '/' do
  puts "Hello World!"
  client[room_id].send(username, 'Hello!')
  "Hello World!"
end

post '/alert' do
  puts params
  payload = JSON.parse(params[:payload])
  puts payload
  message = "Alert %s from Log %s , event %s , occured" % [payload['alert']['name'], payload['log']['name'], payload['event']['m']]
  puts message
  client[room_id].send(username, message, color: 'red', notify: 1)
end
