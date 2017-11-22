class PagesController < ApplicationController

  def show
    filename = current_page_local_path
    filename += ".md" unless filename.ends_with?('.md')
    @content = IO.read(filename)
  end

end
