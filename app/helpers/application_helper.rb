module ApplicationHelper

  def markdown(text)
    md = ERB.new(text).result(binding)
    html = CommonMarker.render_html(md, :GITHUB_PRE_LANG, [:table, :autolink])
    html.html_safe
  end

  def page_path(course: nil, chapter: '1-introduction', page: '1-overview')
    course ||= @course
    "/#{course.url_path}/#{chapter}/#{page}"
  end

  def pages_for(chapter:, course: nil)
    course ||= @course
    path = File.join(Rails.root, 'books', course.local_folder, chapter, '*')
    Dir.glob(path).map { |f| File.basename(f) }
  end

  def chapters(course: nil)
    course ||= @course
    @chapters ||= begin
      path = File.join(Rails.root, 'books', course.local_folder, '*')
      folders = Dir.glob(path).select {|f| File.directory? f}
      folders.map { |f| File.basename(f) }
    end
  end


end
