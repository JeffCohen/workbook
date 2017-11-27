class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login if Rails.configuration.site['require_login'] rescue nil

  def require_login
    redirect_to '/sessions/new' unless logged_in?
  end

  helper_method :course
  helper_method :topics
  helper_method :current_user
  helper_method :logged_in?
  helper_method :appendices
  helper_method :appendix

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id].present? || !course['require_login']
  end

  def topics
    @topics ||= numbered_files(course['book'])
  end

  def appendices
    path = File.join(Rails.root, 'books', course['book'], 'appendix', '*')
    files = Dir[path].map { |f| File.basename(f, '.md') }
    files.sort

  rescue => e
    logger.warn(e)
    []
  end

  def appendix(section)
    path = File.join(Rails.root, 'books', course['book'], 'appendix', section.to_s, '*')
    files = Dir[path].map { |f| File.basename(f, '.md') }
    files.sort{ |a, b| a.to_i <=> b.to_i }

  rescue => e
    logger.warn(e)
    []
  end

  def numbered_files(*folders)
    path = File.join(Rails.root, 'books', folders.compact, '[1-9]*')
    files = Dir[path].map { |f| File.basename(f, '.md') }
    files.sort { |a, b| a.to_i <=> b.to_i }

  rescue => e
    logger.warn(e)
    []
  end

  def first_file(*folders)
    numbered_files(folders).first
  end

  def course
    logger.debug("Getting course...")
    Rails.configuration.site || { 'number' => 'COURSE WORKBOOK' }

  rescue => e
    logger.warn(e)
    return { 'number' => 'COURSE WORKBOOK' }
  end

end
