class PagesController < ApplicationController
  def show
    # /contact|about|help/
    if params[:id].match /about|contact|help/
      render params[:id]
    else
      render '/pages/not_found.html.erb', :status => 404
    end
  end

  def home
    render '/pages/home.html.erb'
  end
end
