module Players
  class Human < Player # use the "<" to inherit the Human subclass from Player

    def move(board)
      puts "Please enter 1-9:"
      gets.strip
    end

  end
end
