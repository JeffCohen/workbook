class PagesController < ApplicationController

  before_action :parse_params
  before_action :set_defaults


  def set_defaults
    @topic   ||= topics.first
    @chapter ||= first_file(course['book'], @topic)
    @page    ||= first_file(course['book'], @topic, @chapter)

    Rails.logger.info "@page: #{@page}"
  end

  def current_page_local_path
    @current_page_local_path ||= File.join(Rails.root, 'books', course['book'], @topic, @chapter, @page)
  end

  def parse_params
    @topic = params[:topic]&.downcase
    @chapter = params[:chapter]&.downcase
    @page = params[:page]&.downcase
  end

  def show
    filename = current_page_local_path
    filename += ".md" unless filename.ends_with?('.md')
    @content = IO.read(filename)
  end

end
