class TestsController < ApplicationController

  def index
   @tests = Test.all
  end


  private
  def test_params
    params.require(:test).permit(:question, :select1, :select2, :select3, :select4)
  end

  def set_group
    @tests = Test.all.limit(10)
  end

end
