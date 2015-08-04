
def game_info
   [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 7,
      away_score: 3
    },
    {
      home_team: "Broncos",
      away_team: "Colts",
      home_score: 3,
      away_score: 0
    },
    {
      home_team: "Patriots",
      away_team: "Colts",
      home_score: 11,
      away_score: 7
    },
    {
      home_team: "Steelers",
      away_team: "Patriots",
      home_score: 7,
      away_score: 21
    }
  ]
end

# YOUR CODE HERE

team_record =
{
  "Patriots" =>
    {
      wins: 0,
      losses: 0
    },

  "Broncos" =>
    {
      wins: 0,
      losses: 0
    },
  "Colts" =>
    {
      wins: 0,
      losses: 0
    },
  "Steelers" =>
    {
      wins: 0,
      losses: 0
    }
}



game_info.each do |game_results|
  if game_results[:home_score] > game_results[:away_score]
     team_record[game_results[:home_team]][:wins] += 1
     team_record[game_results[:away_team]][:losses] += 1
  else
     team_record[game_results[:home_team]][:losses] += 1
     team_record[game_results[:away_team]][:wins] += 1
  end
end


rank = team_record.sort_by { |team, record| record[:losses]}

puts "------------------------------"
puts "| Names   Rank   Wins  Losses|"
rank.each_with_index do |(team, record), index|
  puts "|#{team}".ljust(12) + "#{index + 1}".ljust(6) + "#{record[:wins].to_s}".ljust(7) + "#{record[:losses].to_s}   |".rjust(5)
end
puts "------------------------------"
