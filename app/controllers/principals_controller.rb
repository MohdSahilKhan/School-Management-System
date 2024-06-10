class PrincipalsController < ApplicationController
  def index
    @admins = Admin.all
    @teachers = Teacher.all
  end

  def new
  end

  def show
  end

  def destroy
  end
end
