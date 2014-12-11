class DormsController < ApplicationController

  def index
    @dorms = Dorm.all
  end

  def show
    @dorm = Dorm.find(params[:id])
  end

  def new
    @dorm = Dorm.new
  end

  def create
    @dorm = Dorm.new
    @dorm.name = params[:name]
    @dorm.address = params[:address]
    @dorm.size = params[:size]
    if current_student.admin == true
      @dorm.school_id = params[:school_id]
    elsif current_student.school_admin == true
      @dorm.school_id = current_student.school_id
    end

    if @dorm.save
      redirect_to "/dorms", :notice => "Dorm created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dorm = Dorm.find(params[:id])
  end

  def update
    @dorm = Dorm.find(params[:id])

    @dorm.name = params[:name]
    @dorm.address = params[:address]
    @dorm.size = params[:size]
    @dorm.school_id = params[:school_id]

    if current_student.admin == true
      @dorm.school_id = params[:school_id]
    elsif current_student.school_admin == true
      @dorm.school_id = current_student.school_id
    end

    if @dorm.save
      redirect_to "/dorms", :notice => "Dorm updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dorm = Dorm.find(params[:id])

    @dorm.destroy

    redirect_to "/dorms", :notice => "Dorm deleted."
  end
end
