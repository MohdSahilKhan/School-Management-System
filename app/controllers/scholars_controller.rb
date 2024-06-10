class ScholarsController < ApplicationController
  def index
    @student = Student.all
  end

  def new
  end

  def edit
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to scholars_index_path
  end
  private
    def student_params
      params.require(:student).permit(:email, :full_name, :parent_name, :contact_number)
    end
end
