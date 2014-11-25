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
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.school = params[:school]
    @student.pref_location = params[:pref_location]
    @student.crit_1 = params[:crit_1]
    @student.crit_2 = params[:crit_2]
    @student.crit_3 = params[:crit_3]
    @student.crit_4 = params[:crit_4]
    @student.crit_5 = params[:crit_5]
    @student.crit_6 = params[:crit_6]
    @student.crit_7 = params[:crit_7]
    @student.crit_8 = params[:crit_8]
    @student.crit_9 = params[:crit_9]
    @student.crit_10 = params[:crit_10]
    @student.gender = params[:gender]
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
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.school = params[:school]
    @student.pref_location = params[:pref_location]
    @student.crit_1 = params[:crit_1]
    @student.crit_2 = params[:crit_2]
    @student.crit_3 = params[:crit_3]
    @student.crit_4 = params[:crit_4]
    @student.crit_5 = params[:crit_5]
    @student.crit_6 = params[:crit_6]
    @student.crit_7 = params[:crit_7]
    @student.crit_8 = params[:crit_8]
    @student.crit_9 = params[:crit_9]
    @student.crit_10 = params[:crit_10]
    @student.gender = params[:gender]
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
