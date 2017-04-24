class PostsController < ApplicationController
    ...
    
    def new
        @post = Post.new
    end
    
    # We know this will get run once we've received the       submitted form from our new action above 
    def create
        @post = Post.new(whitelisted_post_params) #see method below
        if @post.save
            flash[:success] = "Great! Your post has been created!"
            redirect_to @post #go to show page for @post
        else
            flash[:error] = "Rats! Fixe your mistakes, please."
            render :new
        end
    end
    
    private
    def whitelisted_post_params
       params.require(:post).permit(:title,:body,:author_id) 
    end
end