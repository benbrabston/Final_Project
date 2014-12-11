class ProfilesController < ApplicationController

  def home
    if current_student.school_admin == true || current_student.admin == true
      redirect_to "/students"
    end

    @current_responses = Response.where({ :student_id => current_student.id })
  end

  def dorm
    @dormmates = Student.where({ :dorm_id => current_student.dorm_id})
  end


  def edit_responses
    @current_responses = Response.where({ :student_id => current_student.id })
  end

  def update_responses
    @current_responses = Response.where({ :student_id => current_student.id })

    @current_responses.each do |response|
      @update_data = Response.find_by({ :question_id => response.question_id, :student_id => current_student.id})
      @update_data.qanswer = params[response.question_id.to_s]
      if @update_data.save
      else
        render 'edit_responses'
      end
    end
      redirect_to "/profile/home/", :notice => "Updated successfully."

  end

end
