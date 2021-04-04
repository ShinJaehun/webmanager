class HomeController < ApplicationController
  def index
    if user_signed_in?
      @teams = current_user.teams
      #@teams = Team.where('id = ?', current_user.team_id)
      #@projects = Project.where('team_id = ?', current_user.team_id)
      @projects = Project.where(team_id: current_user.teams)
    end
  end
end
