#!/usr/bin/ruby

class Array
  def queen_attack?(pawn)

    abs_queen_x = self[0].abs
    abs_queen_y = self[1].abs
    abs_pawn_x = pawn[0].abs
    abs_pawn_y = pawn[1].abs

    if abs_queen_x == abs_pawn_x || abs_queen_y == abs_pawn_y
      true
    elsif (((abs_pawn_y - abs_queen_y) / (abs_pawn_x - abs_queen_x)) == 1)
      true
    else
      false
    end
  end
end
