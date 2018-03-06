module PagesHelper

  def cleanup(book_element = nil)
    book_element&.sub(/\d-/,'')&.titleize
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
    path = File.join(Rails.root, 'books', course['book'], topic || @topic, chapter, '*')
    Dir.glob(path).map { |f| File.basename(f, '.md') }.sort
  end

  def chapters(topic: nil)
    @chapters ||= begin
      path = File.join(Rails.root, 'books', course['book'], topic || @topic, '*')
      folders = Dir.glob(path).select {|f| File.directory? f}
      folders.map { |f| File.basename(f) }.sort
    end
  end

end
