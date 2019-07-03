class Scrabble
    def initialize(str)
        if str == nil
            str = ''
        end
        @arr = str.upcase.split("")
    
    end

    def self.score(str)
        new(str).score
        # either (new str).score
    end

    def score
        # different from { A: 1}, get value value_pair[:A] => 1 
        value_pair = {
            # get value value["A"]
            "A" => 1,
            "E" => 1,
            "I" => 1,
            "O" => 1,
            "U" => 1,
            "L" => 1,
            "N" => 1,
            "R" => 1,
            "S" => 1,
            "T" => 1,
            "D" => 2,
            "G" => 2,
            "B" => 3,
            "C" => 3,
            "M" => 3,
            "P" => 3,
            "F" => 4,
            "H" => 4,
            "V" => 4,
            "W" => 4,
            "Y" => 4,
            "K" => 5,
            "J" => 8,
            "X" => 8,
            "Q" => 10,
            "Z" => 10
        }
     
        score = 0
        # use each loop through the array => @arr
        @arr.each {|char| 
            score = score + (value_pair.has_key?(char)? value_pair[char] : 0) }
  
        # the below code will also work when
        # in initialize. @str = str.upcase
        # use each loop through the hash => value_pair
        # value_pair.each { |key, value|
        #     score = score + (@str.scan(key).count * value)}

        return score
    end
end
