class Basketball::CLI
  def call
    puts "Hello welcome to the basketball cli please enter the number of the team you would like to see or type exit to quit"

    team_information = Basketball::TeamScrapper.scrape_index_page("http://nba.com/teams")
    Basketball::Team.create_from_collection(team_information)
    Basketball::Team.list_teams
    #team.get_team
  end


end
