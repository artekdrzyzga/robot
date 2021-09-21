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
        case step
          when "N" 
            if @position.posy < 10
              @position.increment!(:posy)
            end      
          when "S"
            if @position.posy > 1
              @position.decrement!(:posy)
            end
          when "E"
            if @position.posx < 10
              @position.increment!(:posx)
            end
          when "W"
            if @position.posx > 1
              @position.decrement!(:posx)
            end  
          else
          #  "Error: capacity has an invalid value (#{capacity})"
        end     
       @position1 = Position.new(posx: @position.posx, posy: @position.posy)
       @position1.save      
    end
  end

  
end
