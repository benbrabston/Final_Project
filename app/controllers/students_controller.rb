class StudentsController < ApplicationController

  def index
    @students = Student.all

    @k = 0
    Dorm.where({ :school_id => current_student.school_id }).each do |dorm|
      if dorm.students.count > dorm.size
        @k = @k + 1
      end
    end

  end

  def show
    @student = Student.find(params[:id])
    @response = @student.responses
    @question = @student.school.questions
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.email = params[:email]
    @student.gender = params[:gender]
    @student.password = "12345678"
    @student.password_confirmation = "12345678"
    if current_student.admin == true
      @student.school_id = params[:school_id]
    elsif current_student.school_admin == true
      @student.school_id = current_student.school_id
    end

    if @student.save
      redirect_to "/students", :notice => "Student created successfully.  Password set to 12345678"
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
    @student.gender = params[:gender]

    if current_student.admin == true
      @student.school_id = params[:school_id]
    elsif current_student.school_admin == true
      @student.school_id = current_student.school_id
    end


    if @student.save
      redirect_to "/students", :notice => "Student updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])

    Response.where({ :student_id => @student.id}).each do |response|
      response.destroy
    end


    @student.destroy

    redirect_to "/students", :notice => "Student deleted."
  end
end
