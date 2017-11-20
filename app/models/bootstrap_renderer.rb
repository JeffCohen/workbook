class BootstrapRenderer < CommonMarker::HtmlRenderer

  def initalize
    super
  end
  
  def image(node)
    byebug
    out('<img class="img-responsive" src="', escape_href(node.url), '"')
    plain do
      out(' alt="', :children, '"')
    end
    if node.title && !node.title.empty?
      out(' title="', escape_html(node.title), '"')
    end
    out(' />')
  end

end
