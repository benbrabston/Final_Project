class FactorsController < ApplicationController

  def setup
    csv_data_array = []
    Response.all.each do |student|
      if student.student.school == current_student.school && student.student.admin != true  && student.student.school_admin != true
      csv_data_array = csv_data_array + [student.student_id]
      end
    end
    Response.all.each do |qanswer|
      if qanswer.student.school == current_student.school && qanswer.student.admin != true  && qanswer.student.school_admin != true
      csv_data_array = csv_data_array + [qanswer.qanswer]
      end
    end
    Response.all.each do |question|
      if question.student.school == current_student.school && question.student.admin != true  && question.student.school_admin != true
      csv_data_array = csv_data_array + [question.question_id]
      end
    end

    respond_to do |format|
      format.html
      format.csv { send_data csv_data_array.to_csv }
    end

  end

  def place_students
    if current_student.admin == true
      @school_id = params[:school_id]
    else
      @school_id = current_student.school_id
    end

  @students = Student.where({ :school_id => @school_id }).all
  end



  def place_students_admin
    if current_student.school_admin == true
      redirect_to "/place_students"
    end
  end



  def make_placements
    Student.all.each do |student|
      if params[student.id.to_s].present?
        s = Student.find(student.id)
        s.dorm_id = params[student.id.to_s]
        s.save
      end
    end

    redirect_to "/", :notice => "Students assigned succesfully"


  end









  def clustering_algorithm
    @students_for_clustering = Student.where({ :school_id => params[:school_id]})


    # TODO Figure out how to do the above faster - should not need a where tag


    # Populate all of the student data into a suitable data file

    # TODO ALL OF THE BELOW REGARDING CREATING PROPER DATATABLES

    # create_table_for_clustering(@students_for_clustering.first.school_id)

    # # create_table :cluster_data do |t|
    # #   t.integer :student_id

    # #   # Create a column for each question asked - note number of questions may vary by school, so the number of columns is TBD
    # #   Response.question_id.each do |question|
    # #     t.integer "question_#{question}"
    # #   end

    # #   t.timestamps
    # # end

    # # Populate data table
    # @student_for_clustering.each do |student|
    #   new_student = Cluster_data.new

    #   new_student.student_id = student.id

    #   # Populate responses
    #   # Response.where({ :student_id => new_student.student_id }).each do |response|
    #   #   new_student.question_(response.question_id) = response.qanswer
    #   # end

    #   new_student.save
    # end

    # @database = Cluster_data.all




    # database = Response.where({ :school_id => params[:school_id] })

    # rotation = Statsample::Factor::Varimax(database)
    # rotation.iterate

    # p rotation.rotated
    # p rotation.component_transformation_matrix


    # database = Response.all

    # rotation = Statsample::Factor::Varimax(database)
    # rotation.iterate

    # p rotation.rotated
    # p rotation.component_transformation_matrix



  end


end
