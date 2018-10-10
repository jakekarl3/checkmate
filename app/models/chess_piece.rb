class ChessPiece < ApplicationRecord

  def is_obstructed? (board, current_position, new_position)
    #Extracts current x and y positions
    current_x = current_position[0]
    current_y = current_position[1]

    #Extracts new x and y positions
    new_x = new_position[0]
    new_y = new_position[1]

    # Determines which type of move is being made or invalid

    # Vertical move
    if current_x == new_x
      puts "This is a vertical move"
      # Determines which direction the move is going
      if current_y - new_y > 0
        for y in new_y + 1..current_y - 1
          # Returns true if a space is occupied
          if board[y][current_x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false
      elsif current_y - new_y < 0
        for y in current_y + 1..new_y - 1
          # Returns true if a space is occupied
          if board[y][current_x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false
      else
        return false
      end
    # Horizontal move
    elsif current_y == new_y
      puts "This is a horizontal move"
      # Determines which direction the move is going
      if current_x - new_x > 0
        for x in new_x + 1..current_x - 1
          # Returns true if a space is occupied
          if board[current_y][x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false
      elsif current_x - new_x < 0
        for x in current_x + 1..new_x - 1
          # Returns true if a space is occupied
          if board[current_y][x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false
      else
        return false
      end  
      

    # Diagonal move
    elsif (current_x - new_x).abs == (current_y - new_y).abs
      
      # Determines which direction the move is going

      # Down to the left
      if current_x - new_x > 0 && current_y - new_y > 0
        y = new_y
        for x in new_x + 1..current_x - 1
          y += 1
          # Returns true if a space is occupied
          if board[y][x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false

      # Down to the right
      elsif current_x - new_x < 0 && current_y - new_y > 0
        y = current_y
        for x in current_x + 1..new_x - 1
          y -= 1
          # Returns true if a space is occupied
          if board[y][x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false

      # Up to the left
      elsif current_x - new_x > 0 && current_y - new_y < 0
        y = new_y
        for x in new_x + 1..current_x - 1
          y -= 1
          # Returns true if a space is occupied
          if board[y][x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false

      # Up to the right
      elsif current_x - new_x < 0 && current_y - new_y < 0
        y = current_y
        for x in current_x + 1..new_x - 1
          y += 1
          # Returns true if a space is occupied
          if board[y][x].nil? == false
            puts "This move is obstructed"
            return true
          end
        end
        # Returns false if none of the spaces in between are occupied
        puts "This move is not obstructed"
        return false
          
      else
        return false
      end

      puts "This is a diagonal move"
    else
      puts "Invalid input"
    end
  end

end
