class StudentsController < ApplicationController

  before_action :set_student, only: :show 
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new 

    #shows the new student erb page 
  end 

  def create 

    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    
    session[:new_form_params] = params.inspect 
    redirect_to new_student_path 
  end 

  private 
    def set_student 

      @student = Student.find(params[:id])
    end 

end
