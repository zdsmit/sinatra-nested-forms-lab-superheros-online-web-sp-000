require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'app/views/super_hero'
    end

    post "/teams" do
      @new_team = Team.new(params[team])
      erb :'app/views/team'
    end


end
