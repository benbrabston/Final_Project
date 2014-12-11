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
    @current_responses = current_student.responses

    # Edit Current Responses
    @current_responses.each do |response|
      @update_data = Response.find_by({ :question_id => response.question_id, :student_id => current_student.id})
      @update_data.qanswer = params[response.question_id.to_s]
      if @update_data.save
      else
        render 'edit_responses'
      end
    end

    # Add New Responses
    params.keys.each do |response_key|
      if Response.find_by({ :question_id => response_key, :student_id => current_student.id}).present?
      end
      if response_key.is_number?
      new_response = Response.new
      new_response.student_id = current_student.id
      new_response.question_id = response_key
      new_response.qanswer = params[response_key]
      new_response.save
      end
    end


      redirect_to "/profile/home/", :notice => "Updated successfully."

  end

end
