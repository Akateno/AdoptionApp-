class DogsController < ApplicationController

    def index 
        render json:Dog.all
    end 

    def create 
        dog=Dog.create!(dog_params)
        render json: dog, status: :created 
    end 

    def update 
        dog=find_dog
        dog.update!(dog_params)
        render json:dog, status: :accepted    
    end 

    def destroy
        dog = find_dog
        dog.destroy 
        head :no_content 

    end 



    private 

    def find_dog
        Dog.find(params[:id])
    end  

    def dog_params
        params.permit(:name, :breed, :age, :trait, :image)
    end 
end
