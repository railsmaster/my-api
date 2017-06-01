module Api
	class PostsController < ApplicationController
		def index
			@posts = Post.all
			render json: @posts, status: 200
		end

		def create
			

			 @post = Post.new(post_params)

		    respond_to do |format|
		      if @post.save
		        format.json { render :show, status: :created }
		      else
		        format.json { render json: @post.errors, status: :unprocessable_entity }
		      end
		    end
		end

		
		def post_params
      	  params
        	.require(:post)
        	.permit(:title, :text)
    	end

	end
end