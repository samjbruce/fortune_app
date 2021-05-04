class MyExamplesController < ApplicationController

  def fortune_method
    fortune = ["He who laughs at himself never runs out of things to laugh at.", "The greatest risk is not taking one.", "A stranger, is a friend you have not spoken to yet."]
    random_fortune = fortune.sample
    render json: {fortune: random_fortune}
  end

  def random_numbers_method
    number_array = []
    6.times do
      number_array << rand(1..60)
    end
    render json: {random_numbers: number_array}
  end

  def counter_method
    
  end

  def song_method
    number_1 = 99
    number_2 = 98
    song = []
    99.times do
      song << "#{number_1} bottles of beer on the wall, #{number_1} bottles of beer. Take one down, pass it around #{number_2} bottles of beer on the wall. "
      number_1 -= 1
      number_2 -= 1
    end
    song << "#{number_1} bottle of beer on the wall #{number_1} bottle of beer. Go to the store, buy some more. 99 bottles of beer on the wall."
    render plain: (song)
  end
end
