class PostsController < ApplicationController

	def index
		@posts = Post.all
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to root_path, notice: "New post created successfully."
		end
	end

	def new
		@post = Post.new
	end

	def destroy
	end

	def update
	end

	def edit
	end

private

	def post_params
    	params.require(:post).permit(:content, :title)
	end

end
