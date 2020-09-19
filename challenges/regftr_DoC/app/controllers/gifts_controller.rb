class GiftsController < ApplicationController

    def index
        puts "=========params========"
        puts params
        puts "=========params========"
        render json: {     
            status: 200, 
            gifts: Gift.all }
    end

    def show 
        puts "=========params========"
        puts params
        puts "=========params========"
        found_gift = Gift.find(params[:id])
        render json: { status: 200, gift: found_gift }
    end

    def create
        puts "==========params============="
        puts params
        puts "==========params============="
        puts "==========gift_params============="
        puts gift_params
        puts "==========gift_params============="
        
        gift = Gift.new(gift_params)
        
        if gift.save
            render json: { status: 201, gift: gift}
        else
            render json: { status: 422, gift: gift}
        end
    end

    def update
        gift = Gift.find(params[:id])
        gift.update(gift_params)
        render json: { gift: gift }
    end

    def destroy
        gift = Gift.destroy(params[:id])
        render json: { status: 204 }
    end



    private
        def gift_params
          params.required(:gift).permit(:description, :value, :event, :gift_giver)
        end


end