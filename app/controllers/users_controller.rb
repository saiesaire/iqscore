class UsersController < ApplicationController

  def index
    @test = Test.new
    @tests = Test.all
  end

  def create
  end

  def edit
  end
  
end
