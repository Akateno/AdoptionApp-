class ApplicantsController < ApplicationController
    def index 
        render json: Applicant.all
    end 
    # def create 
    #     dog=Applicant.create!(dog_params)
    #     render json: dog, status: :created 
    # end 

    # def update 
    #     dog=find_dog
    #     dog.update!(dog_params)
    #     render json:dog, status: :accepted    
    # end 

    # def show 
    #     applicant = find_applicant
    #     render json: applicant 

    # end 

     



    private 

    def find_applicant
        Applicant.find(params[:id])
    end  

     
end
