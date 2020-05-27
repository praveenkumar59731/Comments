class CommentsController < ApplicationController


    def show
        @comment = Comment.find(params[:id])
    end

    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
    end

    def edit
        @comment =Comment.find(params[:id])
    end

    def create
        @comment = Comment.new(params.require(:comment).permit(:name, :comment))
        @comment.save
        redirect_to comments_path
    end

    def update
        @comment =Comment.find(params[:id]) 
        @comment.update(params.require(:comment).permit(:name, :comment))
        redirect_to comments_path
    end

    def destroy
        @comment =Comment.find(params[:id]) 
        @comment.destroy()
        redirect_to comments_path
    end
end