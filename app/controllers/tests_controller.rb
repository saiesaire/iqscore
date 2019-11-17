class TestsController < ApplicationController

  def index
   @test = Test.new
   @tests = Test.all
  end

  def create
    Test.create(question: test_params[:question], question_wrapper: test_params[:question_wrapper], select1: test_params[:select1], select2: test_params[:select2], select3: test_params[:select3], select4: test_params[:select4], answer: test_params[:answer])
  end


  private
  def test_params
    params.require(:test).permit(:question, :question_wrapper, :select1, :select2, :select3, :select4, :answer)
  end

  def set_group
    @tests = Test.all.limit(10)
  end

end
