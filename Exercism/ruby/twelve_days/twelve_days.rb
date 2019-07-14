class TwelveDays

    def self.song
        lyrics = ["a Partridge in a Pear Tree",
        "two Turtle Doves",   
        "three French Hens",
        "four Calling Birds",
        "five Gold Rings",
        "six Geese-a-Laying",
        "seven Swans-a-Swimming",
        "eight Maids-a-Milking",
        "nine Ladies Dancing",
        "ten Lords-a-Leaping",
        "eleven Pipers Piping",
        "twelve Drummers Drumming"
    ]

        string = ""
        day = ""
        line = 0
        while line <= 11

            if line == 0
                day = "first"
            elsif line == 1
                day = "second"
            elsif line == 2
                day = "third"
            elsif line == 3
                day = "fourth"
            elsif line == 4
                day = "fifth"
            elsif line == 5
                day = "sixth"
            elsif line == 6
                day = "seventh"
            elsif line == 7
                day = "eighth"
            elsif line == 8
                day = "ninth"
            elsif line == 9
                day = "tenth"
            elsif line == 10
                day = "eleventh"
            elsif line == 11
                day = "twelfth"      
            end  
            
            presents = ""

            lyrics.each_with_index {
                |present, index| 

                if index <= line
                    if line == 0
                        presents = present
                    elsif index == 0
                        presents = "and " + present
                    else                        
                        presents = present + ", " + presents
                    end
                end
            }
            
            string += "On the #{day} day of Christmas my true love gave to me: #{presents}." + (line == 11? "\n" : "\n\n")
            
            line += 1
        end
        
        string 
    end
end

