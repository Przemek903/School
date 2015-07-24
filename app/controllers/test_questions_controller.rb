class TestQuestionsController < ApplicationController
  def new
    @testQuestion = TestQuestion.new
    setCourseAndLesson
  end

  def create
    @testQuestion = TestQuestion.new(testQuestion_params)
    setCourseAndLesson
    if @testQuestion.save
      redirect_to course_lesson_test_test_questions_path(@course.id, @lesson.id, @lesson.test.id)
    else
      render 'new'
    end
  end

  def show
    @testQuestion = TestQuestion.find(params[:id])
  end

  def index
    @testQuestions = TestQuestion.where(test_id: params[:test_id])
    setCourseAndLesson
  end

  def edit
    @testQuestion = TestQuestion.find(params[:id])
    setCourseAndLesson
  end

  def update
    @testQuestion = TestQuestion.find(params[:id])
    setCourseAndLesson
    if @testQuestion.update_attributes(testQuestion_params)
      flash[:success] = "Pytanie zaktualizowane"
      redirect_to course_lesson_test_test_questions_path(@course.id, @lesson.id, @lesson.test.id)
    else
      render 'edit'
    end
  end

  def destroy
    TestQuestion.find(params[:id]).destroy
    redirect_to course_lesson_test_test_questions_path
  end

  private 

    def testQuestion_params
      params.require(:test_question).permit(:test_id, :question, :answerA, :answerB, :answerC, :answerD, :correctAnswer)
    end

    def setCourseAndLesson
      @course = Course.find(params[:course_id])
      @lesson = Lesson.find(params[:lesson_id])
    end

end
