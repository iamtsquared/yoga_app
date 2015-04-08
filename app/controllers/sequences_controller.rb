class SequencesController < ApplicationController
	before_action :authenticate_user!

	def index
		@sequences = current_user.sequences
	end

	def all_sequences
		@sequences = Sequence.all
	end

	#sequence is a list of poses linked together
	#sends a blank form to the new view for user to name a new sequence
	def new
		@sequence = Sequence.new
	end

	#will create a new sequence 
	def create
		#@sequence = Sequence.new(sequence_params)
		
		@sequence = current_user.sequences.build(sequence_params)
		if @sequence.save
			redirect_to sequence_path(@sequence)
		else
			render :new
		end
	end

	def show
		@sequence = find_sequence
		@poses = @sequence.poses
			
	end

	
	#finds the current sequence 
	def edit
		@sequence = find_sequence
		@poses = Sequence.poses.all
		render "poses/index"
	end

	def update
		@sequence = find_sequence
		if @sequence.update_attributes(sequence_params)
			redirect_to sequence_path(@sequence)
		else
			render :edit
		end

	end

	
	def find_sequence
		current_user.sequences.find(params[:id])
	end

	def sequence_params
		params.require(:sequence).permit(:name, :level)
	end
end
