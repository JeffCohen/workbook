class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :parse_params
  before_action :set_defaults

  helper_method :course

  def course
    Rails.configuration.site
  end

  def set_defaults
    @topics    = all_files(course['book'])
    @topic   ||= @topics.first
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

  def all_files(*folders)
    path = File.join(Rails.root, 'books', folders, '*')
    Dir[path].sort.map { |f| File.basename(f)}
  end

  def first_file(*folders)
    all_files(folders).first
  end


end
