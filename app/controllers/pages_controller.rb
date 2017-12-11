class PagesController < ApplicationController

  before_action :parse_params
  before_action :set_defaults
  before_action :check_for_draft_status


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

  def check_for_draft_status
    @draft = course['draft'].include?(@topic)
    @draft ||= course['draft'].include?(@chapter)
    @draft ||= course['draft'].include?(@page)
    
    Rails.logger.info "@draft: #{@draft}"
  end

  def show
    filename = current_page_local_path
    filename += ".md" unless filename.ends_with?('.md')
    @content = IO.read(filename)
  end

end
