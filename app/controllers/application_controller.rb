require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |details_hash|
            Hero.new(details_hash)
        end
        @heroes = Hero.all
        
        erb :team
    end
end

# params = {
#     team => {
#         name => "Planet team",
#         motto => "Earth is great",
#         members => [
#             {name => "Sam", power = "Fire", bio="Young alien"},
#             {name => "Bob", power = "Ice", bio="Orphan king"}
#         ]
#     }
# }