require './lib/stat_tracker'

RSpec.describe StatTracker do
  xit 'exists' do
    game_path = './data/games.csv'
    team_path = './data/teams.csv'
    game_teams_path = './data/game_teams.csv'

    locations = {
              games: game_path,
              teams: team_path,
              game_teams: game_teams_path
                }

    stat_tracker = StatTracker.from_csv(locations)

    expect(stat_tracker).to be_an_instance_of(StatTracker)
  end

  xit '#highest_total_score' do
    stat_tracker = StatTracker.from_csv(locations)

    expect(stat_tracker.highest_total_score).to eq(11)
  end
end