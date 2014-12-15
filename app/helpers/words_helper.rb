module WordsHelper
  def display_header(header, field)
    html = ''
    text = @word.send(field)
    html << "<h3>" +header + "</h3>" unless text.blank?
    html << image_tag(field+".jpg", width: 40) +"<br><br>".html_safe unless text.blank? || !File.exist?("app/assets/images/"+field+".jpg")
    html << "<p>" + text +"</p>"
    return html.html_safe
  end
end