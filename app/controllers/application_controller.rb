class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :course
  helper_method :topics

  def topics
    @topics ||= all_files(course['book'])
  end

  def appendix(section)
    path = File.join(Rails.root, 'books', 'appendix', section.to_s)
    Dir[path].sort.map { |f| File.basename(f) }
  end

  def all_files(*folders)
    path = File.join(Rails.root, 'books', folders.compact, '*')
    Dir[path].sort.map { |f| File.basename(f) } - ['appendix']
  end

  def first_file(*folders)
    all_files(folders).first
  end

  def course
    Rails.configuration.site
  end



end
