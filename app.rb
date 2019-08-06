require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :index
    end
  
    get '/new' do
      erb :create_puppy
    end
    
  
    post '/puppy' do
      @puppy = Puppy.create(:name , :breed, :months_old)
      @name = params[:name]
      @breed = params [:breed]
      @months_old = params[:months_old]
      erb :display_puppy
    end
  
end  
