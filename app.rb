require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    total = @num ** 2
    total.to_s
  end

  get '/say/:number/:phrase' do
    final_message = ""
    @num = params[:number].to_i
    @message = params[:phrase]
    @num.times {final_message += @message}
    final_message
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    message = ""
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    
    message = "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    if params[:operation] == 'add'
      sum = params[:number1].to_i + params[:number2].to_i
      sum.to_s
 
     elsif params[:operation] == 'subtract'
      sum = params[:number1].to_i - params[:number2].to_i
      sum.to_s
 
     elsif params[:operation] == 'multiply'
      sum = params[:number1].to_i * params[:number2].to_i
      sum.to_s
 
     elsif params[:operation] == 'divide'
      sum = params[:number1].to_i / params[:number2].to_i
      sum.to_s
     end
  end


end