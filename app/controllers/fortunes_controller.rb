class FortunesController < ApplicationController

 
 def horoscopes
   
  all_zodiacs = Zodiac.list
  selected_sign = params.fetch("the_sign").to_sym
  this_zodiac = all_zodiacs.fetch(selected_sign)
  @zodiac_name = this_zodiac.fetch(:name)
  @horoscope = this_zodiac.fetch(:horoscope)                                  
                                              

  @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "signs_templates/the_sign.html.erb" })
  end
 end
