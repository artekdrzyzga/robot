class MoverobotController < ApplicationController
  def show
    @positions = Position.all
    render json: @positions   
  end

  def update
    @steps = params[:steps]
    @steps=@steps.split(' ')
     @steps.each do |step|
       @position = Position.last 
       
       if @position.posy < 10  || 

         case step
           when "N" 
             @position.posy += 1    
           when "S"
             @position.posy -= 1
           when "E"
             @position.posx += 1
           when "W"
             @position.posx -= 1
           else
          #  "Error: capacity has an invalid value (#{capacity})"
         end
       

         
      @position1 = Position.new(posx: @position.posx, posy: @position.posy)
      @position1.save
 
    end

       
    end
  end



end
