class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login if Rails.configuration.site['require_login']

  def require_login
    redirect_to '/sessions/new' unless logged_in?
  end

  helper_method :course
  helper_method :topics
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id].present? || !Rails.configuration.site['require_login']
  end

  def topics
    @topics ||= all_files(course['book'])
  end

  def appendix(section)
    path = File.join(Rails.root, 'books', course['book'], 'appendix', section.to_s, '*')
    Dir[path].sort.map { |f| File.basename(f, '.md') }
  end

  def all_files(*folders)
    path = File.join(Rails.root, 'books', folders.compact, '*')
    Dir[path].sort.map { |f| File.basename(f, '.md') } - ['appendix']
  end

  def first_file(*folders)
    all_files(folders).first
  end

  def course
    Rails.configuration.site
  end



end
