class PagesController < ApplicationController
    def about
        @posts = Post.all
    end
end
