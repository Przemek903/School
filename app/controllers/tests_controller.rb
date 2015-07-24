class TestsController < ApplicationController
  
  def show
  	@test = Test.find(params[:id])
  end

  def createTest
  	@test = Test.new(:lesson_id => params[:lesson_id])
    if @test.save
      redirect_to root_path
    end
  end
end
