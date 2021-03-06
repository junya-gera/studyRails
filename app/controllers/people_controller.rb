class PeopleController < ApplicationController
  protect_from_forgery

  def index
    @header = 'studyRails'
    @footer = 'link'
    @msg = 'Person Data'
    @data = Person.all
  end

  def add
    @msg = "add new data."
    @person = Person.new
  end

  def create
    if request.post? then
      Person.create(person_params)
    end
    redirect_to '/people/index'
  end

  def find
    @msg = 'please type search word...'
    @people = Array.new
    if request.post? then
      @people = Person.where(name: params[:find])
    end
  end

  def show
    @msg = "Indexed data."
    @data = Person.find(params[:id])
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end

  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people/index'
  end

  def delete
    obj = Person.find(params[:id])
    obj.destroy
    redirect_to '/people/index'
  end

  private
  def person_params
    params.require(:person).permit(:name, :age)
  end

end
