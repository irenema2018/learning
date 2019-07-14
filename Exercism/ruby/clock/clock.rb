class Clock
    attr_accessor :minute
    
    def initialize(time)
        @hour = time[:hour]? time[:hour] : 0        
        @minute = time[:minute]? time[:minute] : 0
    end

    def to_s
        calc
        return "#{@hour}:#{@minute}"
    end

    def ==(external_clock)
        to_s == external_clock.to_s
    end

    def +(external_clock)
                                                        #access the new minute
                                                        #because of attr_accessor
        return Clock.new(hour: @hour, minute: @minute + external_clock.minute)
    end

    def -(external_clock)
        return Clock.new(hour: @hour, minute: @minute - external_clock.minute)
    end

    private

    def calc
        #get total minutes
        @minute = @hour * 60 + @minute 
        
        @hour = @minute / 60 % 24
        @minute = @minute % 60
      
        # if @hour.to_s.length == 1
        #     @hour = "0#{@hour}"
        # end

        @hour = @hour.to_s.length == 1? "0#{@hour}" : "#{@hour}"
        @minute = @minute.to_s.length == 1? "0#{@minute}" : "#{@minute}"
    end    
end