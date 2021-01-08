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
        @review = Review.new(review_params(:review, :rating, :poster_id, :freelancer_id))
        if @review.valid?
            @review.save
            redirect_to reviews_path
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
        
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params(:review, :rating))
        if @review.valid?
            @review.save
            redirect_to review_path(@review)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to edit_review_path(@review)
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end

    private

    def review_params(*args)
        params.require(:review).permit(*args)
    end





end