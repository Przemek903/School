class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(course_params)
      flash[:success] = "Dane zaktualizowane"
      redirect_to @course
    else
      render 'edit'
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def index
    @courses = Course.all
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to 'index'
  end

  private

    def course_params
      params.require(:course).permit(:name, :description, :photo, :syllabus, :categories, 
                                     :recommendedBackground, :language, :timeOfStudy, :user_id)
    end
    
end
