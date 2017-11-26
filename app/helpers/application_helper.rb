module ApplicationHelper

  def markdown(text)
    md = ERB.new(text).result(binding)
    html = CommonMarker.render_html(md, :GITHUB_PRE_LANG, [:table, :autolink])
    html.html_safe
  end

  def topic_path(topic = nil)
    "/#{topic || @topic}"
  end

  def link_to_page(page)
    link_to page.sub(/^\d+\-/, '').titleize, page_path(page: page)
  end

  def chapter_path(topic: nil, chapter: )
    File.join(topic_path, chapter || @chapter)
  end

  def page_path(topic: nil, chapter: nil, page: )
    File.join(chapter_path(topic: topic, chapter: chapter), page)
  end

  def pages_for(topic: nil, chapter:)
    path = File.join(Rails.root, 'books', Rails.configuration.site['book'], topic || @topic, chapter, '*')
    Dir.glob(path).map { |f| File.basename(f, '.md') }.sort
  end

  def chapters(topic: nil)
    @chapters ||= begin
      path = File.join(Rails.root, 'books', Rails.configuration.site['book'], topic || @topic, '*')
      folders = Dir.glob(path).select {|f| File.directory? f}
      folders.map { |f| File.basename(f) }.sort
    end
  end


end
