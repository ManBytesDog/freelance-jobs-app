class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all 
    end

    def show

    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def review_params(*args)
        params.require(:review).permit(*args)
    end





end