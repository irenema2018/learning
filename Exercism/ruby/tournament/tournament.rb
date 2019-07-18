class Tournament
    POINTS_WIN = 3
    POINTS_DRAWN = 1

    def self.tally(input)
        header = "Team".ljust(31) + "| MP |  W |  D |  L |  P" + "\n"

        if input == "\n"
            return header
        end        

        lines = input.split("\n")
       
        game = {}

        # 1. Record game stats
        lines.each { |line|
            info = line.split(";")
            
            team1  = info[0]
            team2  = info[1]
            result = info[2]
           
            game.key?(team1) ? game[team1]["mp"] += 1 : game[team1] = {"mp" => 1, "win" => 0, "draw" => 0, "loss" => 0}       
            game.key?(team2) ? game[team2]["mp"] += 1 : game[team2] = {"mp" => 1, "win" => 0, "draw" => 0, "loss" => 0}

            case result
                when "win"
                    game[team1]["win"] += 1
                    game[team2]["loss"] += 1
                when "loss"
                    game[team1]["loss"] += 1
                    game[team2]["win"] += 1
                when "draw"
                    game[team1]["draw"] += 1
                    game[team2]["draw"] += 1
            end
        }

        # 2. Sort the hash by points in descending order and then team name in alphabetical order
        array = game.sort_by { |k, v|
            [-(v["win"] * POINTS_WIN + v["draw"] * POINTS_DRAWN), k]
        }

        # 3. Loop through each team and print out their scores     
        body = ""
        array.each { |item|
            team_name = item[0]

            body += team_name.ljust(31) + "|  " \
            + game[team_name]["mp"].to_s   + " |  " \
            + game[team_name]["win"].to_s  + " |  " \
            + game[team_name]["draw"].to_s + " |  " \
            + game[team_name]["loss"].to_s + " |  " \
            + (game[team_name]["win"] * POINTS_WIN + game[team_name]["draw"] * POINTS_DRAWN).to_s \
            + "\n"   
        }

        return header + body
    end
end
