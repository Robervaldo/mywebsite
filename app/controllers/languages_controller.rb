class LanguagesController < ApplicationController

  layout "administration"
  respond_to :html

  def index
    @languages = Language.order("description")
  end

  def show
    @language = Language.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
