class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_defaults
  before_action :identify_course
  before_action :identify_chapter
  before_action :identify_page

  def set_defaults
    params[:course] ||= Course.first.url_path
    params[:chapter] ||= '1-introduction'
    params[:page] ||= '1-overview'
  end

  def identify_course
    @course = Course.find_by_url_path(params[:course].downcase)
  end

  def identify_chapter
    @chapter = params[:chapter].downcase
  end

  def identify_page
    @page = params[:page].downcase
  end

end
