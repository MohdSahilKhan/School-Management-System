class FacultiesController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
  end

  def show
  end

  def destroy
  end
end
