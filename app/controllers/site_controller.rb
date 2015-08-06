class SiteController < ApplicationController
  def search
    @results = search_for_beach_access(params[:location])
  end

  def home
  end

  private

  def search_for_beach_access(location)
    BeachAccess.where("location LIKE ?", "%#{location}%")
  end
end
