require 'sinatra'
require 'sinatra/reloader'



get '/' do
    randomize = Random.new
    SECRET_NUMBER = randomize.rand(3)

    str_guess = params['guess']
    message = check_guess(str_guess)
    erb :index, :locals => {:number => SECRET_NUMBER, :message => message}

end

def check_guess(str_guess)
  if !str_guess.nil? && !str_guess.empty?
  intGuess = str_guess.to_i
  if(intGuess == SECRET_NUMBER)
    "You got it right!"
  elsif(intGuess > SECRET_NUMBER)
    "Too high!"
  else
    "Too low!"
    end
  end
end