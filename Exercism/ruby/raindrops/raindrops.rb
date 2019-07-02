class Raindrops
    def self.convert(num)
        result = ""
        if num % 3 == 0
            result = "Pling"
        end

        if num % 5 == 0
            result = result + "Plang"
        end

        if num % 7 == 0
            result = result + "Plong"
        end

        if result == ""
            result = num.to_s
        end

        return result
    end

end
