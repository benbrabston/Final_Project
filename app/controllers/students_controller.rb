class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.email = params[:email]
    @student.email_end = params[:email_end]
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.school = params[:school]
    @student.pref_location = params[:pref_location]
    @student.gender_i = params[:gender_i]
    @student.country = params[:country]
    @student.dorm_id = params[:dorm_id]

    if @student.save
      redirect_to "/students", :notice => "Student created successfully."
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    @student.email = params[:email]
    @student.email_end = params[:email_end]
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.school = params[:school]
    @student.pref_location = params[:pref_location]
    @student.gender_i = params[:gender_i]
    @student.country = params[:country]
    @student.dorm_id = params[:dorm_id]

    if @student.save
      redirect_to "/students", :notice => "Student updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to "/students", :notice => "Student deleted."
  end
end
