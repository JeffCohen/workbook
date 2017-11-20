class PagesController < ApplicationController

  def show
    filename = @page
    filename += ".md" unless filename.ends_with?('.md')
    path = File.join(Rails.root, 'books',
                    @course.local_folder,
                    @chapter, filename)
    @content = IO.read(path)
  end

end
