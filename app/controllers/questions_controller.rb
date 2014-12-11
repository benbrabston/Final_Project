class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.school_id = params[:school_id]
    @question.question_text = params[:question_text]

    if current_student.admin == true
      @question.school_id = params[:school_id]
    else
      @question.school_id = current_student.school_id
    end

    questions_for_school = Question.where({ :school_id => @question.school_id})
    max_questions = questions_for_school.maximum(:school_question_id)
    @question.school_question_id = max_questions + 1

    if @question.save
      redirect_to "/questions", :notice => "Question created successfully."
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    @question.question_text = params[:question_text]
    if current_student.admin == true
      @question.school_id = params[:school_id]
    else
      @question.school_id = current_student.school_id
    end

    if @question.save
      redirect_to "/questions", :notice => "Question updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])

    classmates = Student.where({ :school_id => @question.school_id })

    classmates.each do |classmate|
      if Response.find_by({ :question_id => @question.school_question_id, :student_id => classmate.id}).present?
        corresponding_response = Response.find_by({ :question_id => @question.school_question_id, :student_id => classmate.id})
        corresponding_response.destroy
      end
    end

    @question.destroy

    redirect_to "/questions", :notice => "Question deleted.  All corresponding responses also removed"
  end
end
