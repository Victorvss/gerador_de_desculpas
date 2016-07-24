class Admin::PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)

      if @person.save
        redirect_to [:admin,@person], notice: 'Perfil criado com sucesso.'
      else
        format.html { render :new }
      end
  end

  def update

      if @person.update(person_params)
        redirect_to [:admin,@person], notice: 'Perfil atualizado com sucesso.'
      else
        format.html { render :edit }
      end
  end

  def destroy
    @person.destroy
    redirect_to admin_people_url, notice: 'Perfil deletado com sucesso.'
  end

  private

    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:name)
    end
end
