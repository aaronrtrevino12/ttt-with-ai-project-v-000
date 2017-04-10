class Board
  attr_accessor :cells
  cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  def initialize
    self.reset!
  end

  def display(cells)
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def self.reset!
    cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def taken?(cells, location)
    cells[location] != " " && cells[location] != ""
  end

  def position(cells)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(cells, index)
      move(cells, index)
      display(cells)
    else
      position(cells)
    end
  end

  def update(index, token = "X")
    cells[index] = token
  end

  def full?(cells)
    cells.all? do |full|
      full == "X" || full == "O"
    end
    # Evaluates cells indexes to true if "all" are equal to "X" or "O"
  end

  def turn_count(cells)
    counter = 0
    until counter == 9
      position(cells)
      counter += 1
    end
  end

  def valid_move?(cells, index)
    index.between?(0,8) && !taken?(cells, index)
  end

end
