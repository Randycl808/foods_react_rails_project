class Api::FoodTypesController < ApplicationController

before_action :set_food
before_action :set_food_type, only:[:show, :update, :destroy]

def index
    render json: @food.food_types
end

def show
    render json: @food_type
end

def create
    food_type = @food.food_types.new(food_type_params)
    if(food_type.save)
        render json: food_type
    else
        render json: {errors: food_type.errors.full_messages}, status: 422
    end
end

def update
    if(@food_type.update(food_type_params))
        render json: @food_type
    else
        render json: {errors: food_type.errors.full_messages}, status: 422
    end
end

def destroy
    render json: @food_type.destroy
end


private

def set_food
    @food = Food.find(params[:food_id])
end

def set_food_type
    @food_type = @food.food_types.find(params[:id])
end

def food_type_params
    params.require(:food_type).permit(:name, :country)
end


end
