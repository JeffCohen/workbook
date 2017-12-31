class PagesController < ApplicationController

  before_action :parse_params
  before_action :set_defaults
  before_action :check_for_special_status

  def parse_params
    @topic = params[:topic]&.downcase
    @chapter = params[:chapter]&.downcase
    @page = params[:page]&.downcase
  end

  def set_defaults
    @topic   ||= topics.first
    @chapter ||= first_file(course['book'], @topic)
    @page    ||= first_file(course['book'], @topic, @chapter)

    Rails.logger.info "@topic: #{@topic}"
    Rails.logger.info "@chapter: #{@chapter}"
    Rails.logger.info "@page: #{@page}"
  end

  def current_page_local_path
    @current_page_local_path ||= File.join(Rails.root, 'books', course['book'], @topic, @chapter, @page)
  end

  def check_for(status)
    return false unless course[status]
    flagged = course[status].include?(@topic)
    flagged ||= course[status].include?(@chapter)
    flagged ||= course[status].include?(@page)
    flagged
  end

  def check_for_special_status
    @draft = check_for 'draft'
    @coming_soon = check_for 'coming_soon'
  end

  def show
    begin
      filename = current_page_local_path
      filename += ".md" unless filename.ends_with?('.md')
      @content = IO.read(filename)
    rescue
      redirect_to root_url
    end
  end

end
