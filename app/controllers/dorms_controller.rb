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
    @dorm.gender_i = params[:gender_i]
    @dorm.crit_1 = params[:crit_1]
    @dorm.crit_2 = params[:crit_2]
    @dorm.crit_3 = params[:crit_3]
    @dorm.crit_4 = params[:crit_4]
    @dorm.crit_5 = params[:crit_5]
    @dorm.crit_6 = params[:crit_6]
    @dorm.crit_7 = params[:crit_7]
    @dorm.crit_8 = params[:crit_8]
    @dorm.crit_9 = params[:crit_9]
    @dorm.crit_10 = params[:crit_10]

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
    @dorm.gender_i = params[:gender_i]
    @dorm.crit_1 = params[:crit_1]
    @dorm.crit_2 = params[:crit_2]
    @dorm.crit_3 = params[:crit_3]
    @dorm.crit_4 = params[:crit_4]
    @dorm.crit_5 = params[:crit_5]
    @dorm.crit_6 = params[:crit_6]
    @dorm.crit_7 = params[:crit_7]
    @dorm.crit_8 = params[:crit_8]
    @dorm.crit_9 = params[:crit_9]
    @dorm.crit_10 = params[:crit_10]

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
