class HomeController < ApplicationController
  def index
    @recent_works = Work.all.order(:created_at).limit(21)
  end

end
