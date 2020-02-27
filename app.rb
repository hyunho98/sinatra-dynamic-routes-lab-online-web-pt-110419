require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reverse/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    @output = ""
    "#{params[:number].to_i}".to_i.times { puts params[:phrase] }
  end
end
