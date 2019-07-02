class Hamming
    def self.compute(str1,str2)
        if str1.length != str2.length
            raise(ArgumentError)
        end
    
        arr1 = str1.split('')
        arr2 = str2.split('')

        arr1.map.with_index.count {|char, index|
            char != arr2[index]
        }
        # @count = 0
        # arr1.map.with_index {|char, index| 
        #    if char != arr2[index] 
        #         @count=@count + 1
        #    end
        # }
        # @count
    end
end