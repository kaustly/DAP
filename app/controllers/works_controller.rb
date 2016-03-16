class WorksController < ApplicationController
  load_and_authorize_resource
  # before_action :set_work, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :add_dig, :remove_dig]

  def index
  end

  def show
  end

  def new
  end

  def create
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

  def add_dig
    @work = Work.find(params[:id])
    @work.digged_works.create(user:current_user)
    redirect_to work_path(@work)
  end

  def remove_dig
    @work = Work.find(params[:id])
    @work.digged_works.where(user:current_user).destroy_all
    redirect_to work_path(@work)
  end

  private
  def work_params
    params.require(:work).permit(:title, :year, :artist, :media_type, :info)
  end
end
