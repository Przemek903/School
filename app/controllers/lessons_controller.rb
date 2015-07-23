class LessonsController < ApplicationController
  
  def new
    @lesson = Lesson.new
    @course = Course.find(params[:course_id])
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to course_lesson_path(params[:course_id], @lesson.id)
    else
      render 'new'
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @course = Course.find(params[:course_id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update_attributes(lesson_params)
      flash[:success] = "Dane lekcji zaktualizowane"
      redirect_to course_lesson_path(params[:course_id], @lesson.id)
    else
      render 'edit'
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @course = Course.find(params[:course_id])
  end

  def index
    @lessons = Lesson.all
  end

  def destroy
    Lesson.find(params[:id]).destroy
    flash[:success] = "Lekcja usunięta"
    redirect_to course_path(params[:course_id])
  end

  private
    def lesson_params
      params.require(:lesson).permit(:name, :description, :discussedTopic, :mainKnowledge, :course_id)
    end
end
