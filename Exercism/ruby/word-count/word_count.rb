class Phrase
    def initialize(string)
        @arr = string.downcase.split(/[^0-9a-zA-Z']/)
        # @arr = string.gsub(/[[:punct:]]/, '').split("\n")
    end 

    def word_count
        @hash = {}
        @arr
        .select {|key| key != ""}
        .map {|key| 
            if key[0] == "'" && key[-1] == "'"
                key = key.gsub("'","")
            end
            @hash[key]? @hash[key] = @hash[key] + 1 : @hash[key] = 1
        }
        @hash
    end
end