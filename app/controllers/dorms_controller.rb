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
    @dorm.location = params[:location]
    @dorm.size = params[:size]
    @dorm.gender_i = params[:gender_i]
    @dorm.school_id = params[:school_id]

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
    @dorm.location = params[:location]
    @dorm.size = params[:size]
    @dorm.gender_i = params[:gender_i]
    @dorm.school_id = params[:school_id]

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
