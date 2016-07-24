class Admin::ApologizesController < ApplicationController
  before_action :set_apologize, only: [:show, :edit, :update, :destroy]

  def index
    @apologizes = Apologize.all
  end

  def show
  end

  def new
    @apologize = Apologize.new
  end

  def edit
  end

  def create
    @apologize = Apologize.new(apologize_params)

      if @apologize.save
        redirect_to [:admin, @apologize], notice: 'Desculpas criadas com sucesso.'
      else
        format.html { render :new }
      end
  end


  def update

      if @apologize.update(apologize_params)
        redirect_to [:admin, @apologize], notice: 'Desculpas atualizdas com sucesso.'

      else
        format.html { render :edit }
      end
  end

  def destroy
    @apologize.destroy
    redirect_to admin_apologizes_url, notice: 'Desculpas deletadas com sucesso.'

  end

  private

    def set_apologize
      @apologize = Apologize.find(params[:id])
    end

    def apologize_params
      params.require(:apologize).permit(:apologize_image, :description, :person_id)
    end
end
