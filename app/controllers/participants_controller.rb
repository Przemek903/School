class ParticipantsController < ApplicationController
	
	def new
		@participant = Participant.new
		@course = Course.find(params[:course_id])
	end

	def create
		@participant = Participant.new(participant_params)
		if @participant.save
			redirect_to course_path(@participant.course_id)
		end
	end

	def edit
		@participant = Participant.find(params[:id])
	end

	def update
		@participant = Participant.find(params[:id])
		if @participant.update_attributes(participant_params)
			flash[:success] = "Ocena zaktualizowana"
			redirect_to course_path(@participant.course_id)
		else
			redner 'edit'
		end
	end

	def destroy
		Participant.find(params[:id]).destroy
		flash[:success] = "Wypisałeś się z kursu"
		redirect_to root_path
	end

	private 

		def participant_params
			params.require(:participant).permit(:user_id, :course_id, :grade)
		end
end
