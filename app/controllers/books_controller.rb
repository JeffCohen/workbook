class BooksController < ApplicationController

  def show
    @content = ""
    topics.each do |topic|
      path = File.join(Rails.root, 'books', course['book'], topic, '*')
      folders = Dir.glob(path).select {|f| File.directory? f}
      chapters = folders.map { |f| File.basename(f) }.sort
      chapters.each do |chapter|
        path = File.join(Rails.root, 'books', course['book'], topic, chapter, '*')
        pages = Dir.glob(path).map { |f| File.basename(f, '.md') }.sort
        pages.each do |page|
          filename = File.join(Rails.root, 'books', course['book'], topic, chapter, page)
          filename += ".md" unless filename.ends_with?('.md')
          @content << IO.read(filename)
        end
      end
    end
  end

end
