class Acronym
    def self.abbreviate(string)
        # split a string
        # get the first letter of the string
        # toUpperCase
        return string.split(/[- ]/).map{|word| 
            word[0,1]
        }.join().upcase
         
    end
end
