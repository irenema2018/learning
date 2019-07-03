class Isogram
    def self.isogram?(input)
        chars = input.downcase.scan(/[a-z]/)
        chars.uniq.length == chars.length
    end
end