require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number * number
    square.to_s
  end


  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    full_phrase = ''
    # binding.pry
     number.times do
       full_phrase += " " + phrase
    end
    full_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params.map do |key, value|
       params[key]
    end
    words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    # binding.pry
     if operation == 'add'
       num3 = (num1 + num2).to_s
     elsif operation == 'subtract'
       num3 = (num1 - num2).to_s
     elsif operation == 'multiply'
       num3 = (num1 * num2).to_s
     elsif operation == 'divide'
       num3 = (num1 / num2).to_s
     end
     num3
  end

end
