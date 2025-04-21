class DiceController < ApplicationController

  def homepage
    render({:template=>"dice_templates/homepage"})
  end

  def dynamic
    @dice=params.fetch("number_of_dice").to_i
    @sides=params.fetch("number_of_sides").to_i
    @randomdice=[]
    @dice.times do
      die=rand(1..@sides)
      @randomdice.push(die)
    end

    render({:template=>"dice_templates/dynamic"})
  end


end
