require_relative 'config/environment'

class App < Sinatra::Base

    # 2. In `app.rb` build out a GET request to load a homepage. The homepage
    # should go to the main route `/`.
#     3. The home page will also need a new view `index.erb`. This page should
#    welcome you to the Puppy Adoption Site. Add this view to the controller action.

    get "/" do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    # Now we need to make sure the form is being submitted properly. You'll need
    # to have a third controller action that takes the input from the user and
    # renders a third view (`views/display_puppy.erb`) which displays the info for
    # the puppy that was just created. Create an instance of a puppy to hold the data about the puppy you just created.

    post "/puppy" do
        @puppy = Puppy.new(params['name'], params['breed'], params['age'])
        
        erb :display_puppy
    end


end
