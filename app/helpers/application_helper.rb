module ApplicationHelper

  def article_cover url, options = {}

    html_class = options[:class]
    html_style = "background:url(#{url});"\
                 "width:100%;height:400px;background-size: cover;"

    html = "<header class='#{html_class}' style='#{html_style}'>"\
           "</header>"

    html.html_safe
  end

end
