require_relative 'display'
require_relative 'player'

class HumanPlayer < Player

  def play_move(_board)
    start_pos = nil
    end_pos = nil

    until start_pos && end_pos

      display.render

      if start_pos
        puts "\n"
        puts "It's #{color}'s turn."
        end_pos = display.cursor.get_input

        display.reset_notifications! if end_pos
      else
        puts "\n"
        puts "It's #{color}'s turn."
        start_pos = display.cursor.get_input

        display.reset_notifications! if start_pos
      end
    end

    return [start_pos, end_pos]
  end

end
