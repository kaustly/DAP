class WorksController < ApplicationController
  load_and_authorize_resource
  # before_action :set_work, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
  end

  def create
    # I was surprised that this works, given that you don't have @work = Work.create...
    # but I guess `load_and_authorize_resource` takes care of that part for you.
    @work.user = current_user
    if @work.save
      redirect_to(work_path(@work))
    else
      render(:new)
    end
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to(work_path(@work))
    else
      render(:edit)
    end
  end

  def destroy
    @work.destroy
    redirect_to(works_path)
  end

  def work_params
    params.require(:work).permit(:title, :year, :artist, :media_type)
  end
end
