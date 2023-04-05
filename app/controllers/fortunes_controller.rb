class FortunesController < ApplicationController

 
 def horoscopes
   
  all_zodiacs = Zodiac.list
  this_zodiac = all_zodiacs.fetch(:leo)                                 
  @zodiac_name = params.fetch("the_sign").capitalize
  @horoscope = this_zodiac.fetch(:horoscope)                                                                                                              

  @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "signs_templates/the_sign.html.erb" })
  end
 end
