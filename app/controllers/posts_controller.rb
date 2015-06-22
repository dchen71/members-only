class PostsController < ApplicationController
	before_action :signed_in_user, only: [:new, :create]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			flash[:success] = "Post successfully created"
			redirect_to root_path
		else
			flash.now[:error] = "Title or Content cannot be empty"
			render 'new'
		end
	end

	def signed_in_user
		unless signed_in?
			redirect_to_ login_url
		end
	end

	private

		def post_params
			params.require(:post).permit(:title,:body)
		end
end
