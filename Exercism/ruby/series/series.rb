class Series
    def initialize(string)
          # ["0", "1", "2", "3", "4"]
        @arr = string.split('')
    end

    def slices(num=1)

        if num > @arr.length
            raise(ArgumentError)
        end
       
        # [["0", "1"], ["1", "2"], ["2", "3"], ["3", "4"], ["4"]]
        @new_arr = @arr.map.with_index{|n,i| 
            @arr.slice(i,num)
        }
        # ["01", "12", "23", "34"]
        @new_arr
        .map {|sub| sub.join()}
        .select {|str| str.length == num}
    end

end
