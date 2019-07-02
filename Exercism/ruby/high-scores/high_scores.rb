class HighScores
    attr_accessor :scores

    def initialize(scores)
        @scores = scores
    end

    # getter
    # def scores
    #     @scores
    # end
    
    # setter 
    # def scores=(array)
    #     @scores = array
    # end

    def latest
        @scores[-1]
    end

    def personal_best
        @scores.max
    end

    def personal_top_three
        @scores.sort.reverse[0...3]
    end

end
