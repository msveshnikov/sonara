module WordsHelper
  def display_header(header, field)
    html = ''
    html << "<h3>" +header + "</h3>" if !field.blank?
    html << "<p>" + field +"</p>"
    return html.html_safe
  end
end