class TestsController < ApplicationController
  def createTest
  	@test = Test.new(:lesson_id => params[:lesson_id])
    if @test.save
      redirect_to root_path
    end
  end
end
