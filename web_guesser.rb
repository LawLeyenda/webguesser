require 'sinatra'
require 'sinatra/reloader'

ran = rand(100)
get '/' do
  "The secret number is #{ran}."
end