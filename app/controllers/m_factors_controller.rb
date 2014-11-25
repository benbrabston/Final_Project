class MFactorsController < ApplicationController
  def index
    @m_factors = MFactor.all
  end

  def show
    @m_factor = MFactor.find(params[:id])
  end

  def new
    @m_factor = MFactor.new
  end

  def create
    @m_factor = MFactor.new
    @m_factor.student_id = params[:student_id]
    @m_factor.gender_i = params[:gender_i]
    @m_factor.factor_1 = params[:factor_1]
    @m_factor.factor_2 = params[:factor_2]
    @m_factor.factor_3 = params[:factor_3]
    @m_factor.factor_4 = params[:factor_4]
    @m_factor.factor_5 = params[:factor_5]
    @m_factor.factor_6 = params[:factor_6]

    if @m_factor.save
      redirect_to "/m_factors", :notice => "M factor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @m_factor = MFactor.find(params[:id])
  end

  def update
    @m_factor = MFactor.find(params[:id])

    @m_factor.student_id = params[:student_id]
    @m_factor.gender_i = params[:gender_i]
    @m_factor.factor_1 = params[:factor_1]
    @m_factor.factor_2 = params[:factor_2]
    @m_factor.factor_3 = params[:factor_3]
    @m_factor.factor_4 = params[:factor_4]
    @m_factor.factor_5 = params[:factor_5]
    @m_factor.factor_6 = params[:factor_6]

    if @m_factor.save
      redirect_to "/m_factors", :notice => "M factor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @m_factor = MFactor.find(params[:id])

    @m_factor.destroy

    redirect_to "/m_factors", :notice => "M factor deleted."
  end
end
