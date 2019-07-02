class Matrix
    def initialize(string)
        @array = string.split("\n").map{
            |sub| sub.split().map(&:to_i)
        }
    end

    def rows
        @array  
    end

    def columns
        @array.transpose
    end
end
