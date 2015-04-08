class CommentsController < ApplicationController
	before_action :authenticate_user!

	def index
		@sequence = Sequence.find(params[:sequence_id])
		@comments = Comment.where(sequence_id: params[:sequence_id])
	end
	

end
