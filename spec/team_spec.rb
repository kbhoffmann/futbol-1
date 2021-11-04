require 'CSV'
require './lib/teams'

RSpec.describe Teams do
  it 'exists' do
    team = Teams.new({
          :team_id => '1',
          :franchiseId => '23',
          :teamName => 'Atlanta United',
          :abbreviation => 'ATL',
          :Stadium => 'Mercedes-Benz Stadium',
          :link => 'api/v1/teams/1'
      })

    expect(team).to be_an_instance_of(Teams)
  end

  it 'has attributes' do
    team = Teams.new({
          :team_id => '1',
          :franchiseId => '23',
          :teamName => 'Atlanta United',
          :abbreviation => 'ATL',
          :stadium => 'Mercedes-Benz Stadium',
          :link => 'api/v1/teams/1'
      })

    expect(team.team_id).to eq(1)
    expect(team.franchiseId).to eq(23)
    expect(team.teamName).to eq('Atlanta United')
    expect(team.abbreviation).to eq('ATL')
    expect(team.stadium).to eq('Mercedes-Benz Stadium')
    expect(team.link).to eq('api/v1/teams/1')
  end
end