include ActionView::Helpers::AssetTagHelper

module ApplicationHelper
  def display_miles(dist)
    "%0.1f miles" % (dist.to_f * 0.000621371192)  
    #dist.to_f * 0.621371192
    #dist
  end
 
  class RenderImageswithhelper < Redcarpet::Render::HTML
    def image(link, title, alt_text)
        link.slice! "/assets/"
        link.slice! "images/"
        image_tag(link,  alt: alt_text, title: title)
    end
  end
 
  def markdown(string)
    options = {
      filter_html:     false,
      hard_wrap:       true, 
      space_after_headers: true, 
      fenced_code_blocks: true
    }
 
    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    markdown = Redcarpet::Markdown.new(RenderImageswithhelper, extensions)
 
    markdown.render(string).html_safe
  end

end
