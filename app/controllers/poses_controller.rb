class PosesController < ApplicationController
	before_action :authenticate_user!

	def index2
		@poses = Pose.all
	end

	def index
		@sequence = Sequence.find(params[:sequence_id])
		@poses = Pose.where(sequence_id: params[:sequence_id])
	end

	
	
	def new		
		@sequence = Sequence.find(params[:sequence_id])
		@poses = Pose.all
		@pose = Pose.new
	end

	def create
		@sequence = Sequence.find(params[:sequence_id])
		@pose = Pose.new(pose_params)

		@pose.user = current_user
		#@pose.sequence = @sequence
		if @pose.save
			redirect_to sequence_pose_path(@sequence, @pose)
		else
			render :new
		end

	end

	def show
		if (Sequence.find(params[:sequence_id])) == ""
			@pose = Pose.find(params[:id])
		else			
			@sequence = Sequence.find(params[:sequence_id])
			@pose = Pose.find(params[:id])
		end
	end

	private
	def pose_params
		params.require(:pose).permit(:name, :image, :description)
	end

end
