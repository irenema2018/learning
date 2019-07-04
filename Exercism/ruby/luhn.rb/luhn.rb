class Luhn
    def self.valid?(str)
        str = str.delete(" ")

        # str of length 1 or less are not valid
        # str that contains symbols and letters are not valid
        if str.length <= 1 || str.match(/[^0-9]/)
            return false
        end

        arr = str.split("")
        
        # instruction -  The first step of the Luhn algorithm is to double every second digit, starting from the right
        # ["5", "8", "2", "4", "4", "4", 5", "5", "0"]
        arr = arr.reverse()

        # split the array into two sub array by even index and odd index
        # [["5", "2", "4", "5", "0"], ["8", "4", "4", "5"]]
        big_arr = arr.partition.with_index { |num, index| index.even? }
        
        # ["5", "2", "4", "5", "0"]
        even_index_arr = big_arr[1] 
        
        # ["8", "4", "4", "5"]
        odd_index_arr_sum  = big_arr[0].map(&:to_i).reduce(:+)

        # loop through the even index array
        #  if num > 9, num-9 : 0, return even index array with new number
        #  add up the numbers in the even index array
        even_index_arr_sum = even_index_arr
                            .map{|num| num.to_i * 2}
                            .map{|num| num>9? num-9 : num}
                            .reduce(:+) 
                            # same as .reduce{|acc,num| acc+num}

        #  add up the numbers in the odd index array
        total_sum = odd_index_arr_sum + even_index_arr_sum

        # total_sum % 10 == 0 ? true : false
        return total_sum % 10 == 0
    end
end
