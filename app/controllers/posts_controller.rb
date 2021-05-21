class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
        @categories = Category.all
    end

    def create
        params.permit!
        @post = Post.new(params[:post])
        if @post.save
            redirect_to posts_path, notice: "Post created successfully!"
        else
            render "new"    
        end
    end

    def edit
        @categories = Category.all
        @post = Post.find(params[:id])
    end

    def update
        params.permit!
        @post = Post.find(params[:id])
        if @post.update_attributes(params[:post])
            redirect_to post_path, notice: "Post updated successfully!"
        else
            render "edit"    
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, notice: "Your post has been deleted"
    end
end
