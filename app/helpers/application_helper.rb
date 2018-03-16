module ApplicationHelper

  def bonus
    '<div class="alert alert-primary" role="alert">
      This is a bonus material.
    </div>'
  end

  def tiny_thumbnail_for(url)
    thumbnail_for(url, width: '200px')
  end

  def thumbnail_for(url, options = {})
    options[:width] ||= '400px'
    options[:class] ||= ''
    '<p class="' + options[:class] + '"><a href="' + url + '"><img width="' + options[:width] + '" src="' + url + '" title="click for larger image"></a></p>'
  end

  def image_for(url)
    '<img width="500px" class="border rounded border-primary img-fluid img-rounded" src="' + url + '">'
  end

  def video_for(url, opts = {})
    url = "https://www.youtube.com/embed/" + url unless url.starts_with?('http')
    width = opts[:width] || 640
    height = width / 16 * 9
    qparams = { iv_load_policy: 3, modestbranding: 1, rel: 0, showinfo: 0 }
    '<iframe width="' + width.to_s + '" height="315" src="' + url + '?' + qparams.to_query + '" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>'
  end

  def markdown(text)
    md = ERB.new(text).result(binding)
    html = CommonMarker.render_html(md, :GITHUB_PRE_LANG, [:table, :autolink])
    html.html_safe
  end



end
