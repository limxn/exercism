class Tournament
  OPPOSITE = {:win => :loss, :draw => :draw, :loss => :win}
  POINTS = {:win => 3, :draw => 1, :loss => 0}
  TABLE_PADDING = 31

  attr_reader :standings

  def self.tally(input)
    new(input).print_table
  end

  def initialize(input)
    @standings = Standings.new
    process(input)
  end

  def process(input)
    return if input.match?(/^\S*$/)

    input.each_line do |game|
      info = game.split(";")
      standings.add_match([info[0], info[1]], info[2].chomp)
    end
  end

  def print_table
    padding = TABLE_PADDING

    header = "Team".ljust(padding) + "| MP |  W |  D |  L |  P"
    results = standings.print_table(padding: padding)
    header + results
  end
end

class Standings
  attr_reader :league

  def initialize
    @league = League.new
  end

  def add_match(teams, result)
    team1 = league.get_team(teams[0])
    team2 = league.get_team(teams[1])

    team1.add_result(result.to_sym)
    team2.add_result(Tournament::OPPOSITE[result.to_sym])
  end

  def print_table(padding:)
    table = "\n"

    unless league.teams.empty?
      table += league.sorted_teams.map do |team|
        team.name.ljust(padding) +
        "|  #{team.played} |  #{team.win} |  #{team.draw} "\
        "|  #{team.loss} |  #{team.points}"
      end.join("\n") + "\n"
    end

    table
  end
end

class League
  attr_reader :teams

  def initialize
    @teams = []
  end

  def get_team(name)
    find_team(name) || create_team(name)
  end

  def sorted_teams
    teams.sort_by{|team| [-team.points, team.name] }
  end

  private

  def find_team(name)
    teams.select{|team| team.name == name}.first
  end

  def create_team(name)
    team = Team.new(name: name)
    teams << team
    team
  end
end


class Team < Struct.new(:name, :win, :draw, :loss, keyword_init:true)
  def initialize(name: "", win: 0, draw: 0, loss: 0); super end

  def add_result(result)
    self[result] += 1
  end

  def played
    win + draw + loss
  end

  def points
    win * Tournament::POINTS[:win] +
    draw * Tournament::POINTS[:draw] +
    loss * Tournament::POINTS[:loss]
  end
end
