require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero
    end

    post '/teams' do
      #binding.pry
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @team_members = params[:team][:heros]
      @team = Team.new(@team_name, @team_motto)
      @members = @team_members.map { |m| Hero.new(m) }
      #@team_member_2 = params[:team][:heros][1]
      #@team_member_3 = params[:team][:heros][2]
      #binding.pry
      erb :team
    end
end
