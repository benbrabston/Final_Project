class FFactorsController < ApplicationController
  def index
    @f_factors = FFactor.all
  end

  def show
    @f_factor = FFactor.find(params[:id])
  end

  def new
    @f_factor = FFactor.new
  end

  def create
    @f_factor = FFactor.new
    @f_factor.student_id = params[:student_id]
    @f_factor.gender_i = params[:gender_i]
    @f_factor.factor_1 = params[:factor_1]
    @f_factor.factor_2 = params[:factor_2]
    @f_factor.factor_3 = params[:factor_3]
    @f_factor.factor_4 = params[:factor_4]
    @f_factor.factor_5 = params[:factor_5]
    @f_factor.factor_6 = params[:factor_6]

    if @f_factor.save
      redirect_to "/f_factors", :notice => "F factor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @f_factor = FFactor.find(params[:id])
  end

  def update
    @f_factor = FFactor.find(params[:id])

    @f_factor.student_id = params[:student_id]
    @f_factor.gender_i = params[:gender_i]
    @f_factor.factor_1 = params[:factor_1]
    @f_factor.factor_2 = params[:factor_2]
    @f_factor.factor_3 = params[:factor_3]
    @f_factor.factor_4 = params[:factor_4]
    @f_factor.factor_5 = params[:factor_5]
    @f_factor.factor_6 = params[:factor_6]

    if @f_factor.save
      redirect_to "/f_factors", :notice => "F factor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @f_factor = FFactor.find(params[:id])

    @f_factor.destroy

    redirect_to "/f_factors", :notice => "F factor deleted."
  end
end
