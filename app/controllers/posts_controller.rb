class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
		@post = Post.new #displaying the new form on the index page
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to post_path(@post), notice: "New post created successfully."
		else
			render :index
		end
	end

	def new
		# moved to the index action, for displaying the new form in there. 
		@post = Post.new
	end

	def destroy
	end

	def update
	end

	def edit
	end

private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
    	params.require(:post).permit(:content, :title)
	end

end
