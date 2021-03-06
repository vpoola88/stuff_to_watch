class TagsController < ApplicationController
	before_action :find_tag, only: [:show, :edit, :update, :destroy]

	def index
		@tags = Tag.all.order(:name)

		current_user_likes = Like.where(user_id: current_user.id)
  	@current_user_likes = {}
  	current_user_likes.each do |like|
  		@current_user_likes[like.medium_id] = like.value
  	end
	end

	def show
		@movies = @tag.movies
		@shows = @tag.shows

		current_user_likes = Like.where(user_id: current_user.id)
  	@current_user_likes = {}
  	current_user_likes.each do |like|
  		@current_user_likes[like.medium_id] = like.value
  	end
	end

	def create

	end

	private

	def find_tag
		@tag = Tag.find(params[:id])
	end

	def tag_params
		params.require(:tag).permit(:name)
	end

end
