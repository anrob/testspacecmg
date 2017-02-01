class Position
   
    POSITIONS = [
      :manager, 
      :male_vocalist_1,    
      :male_vocalist_2,    
      :male_vocalist_3,    
      :female_volcalist_1, 
      :female_volcalist_2, 
      :female_volcalist_3, 
      :drummer, 
      :guitar_player, 
      :horn_player, 
      :keyboard_player, 
      :bass_player, 
      :roadie, 
      ]
      
      def self.options
      POSITIONS.map { |position| [position.capitalize, position] }
      end
      
   
end