class ReviewsController < ApplicationController
    
     

    def index
        @reviews = Review.all 
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to reviews_path
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update

    end

    def destroy

    end

    private

    def review_params
        params.require(:review).permit(:review, :rating)
    end





end