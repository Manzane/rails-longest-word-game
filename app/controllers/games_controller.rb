class GamesController < ApplicationController

  def new
    alpha = ('a'..'z').to_a
    @letters = %w[]
    10.times { @letters << alpha.sample }
  end
  def score
    # binding.pry
    @word = params[:word]
    new_array = @word.split('')
    letters = params[:letters]
    initial_array = letters.split('')
    # raise

    if new_array.each do |l|
      initial_array.include?(l)
    end
      @score = "Woohoooo you win !"

    else
      @score = "Youuu looooose !"
    end
  end
end


# commune en 2 ?

# .sort

# .include?()
