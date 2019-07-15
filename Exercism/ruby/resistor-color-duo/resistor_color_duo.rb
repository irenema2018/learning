class ResistorColorDuo
    def self.value(colors)
        
        colors = colors.map(&:capitalize)
              
        color_value = { "Black" => 0,
                        "Brown"=> 1,
                        "Red"=> 2,
                        "Orange"=> 3,
                        "Yellow"=> 4,
                        "Green"=> 5,
                        "Blue"=> 6,
                        "Violet"=> 7,
                        "Grey"=> 8,
                        "White"=> 9
                    }

                
        colors.map { |color| color_value[color].to_s}
              .join
              .to_i
        
    end
end
