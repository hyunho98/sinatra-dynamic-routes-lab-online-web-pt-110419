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
    count = 0
    while count <= params[:number].to_i do
      "#{params[:phrase]}"
      count += 1
    end
    params[:phrase]
  end
end
