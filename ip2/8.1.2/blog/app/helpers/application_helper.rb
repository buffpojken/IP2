module ApplicationHelper

  def transform(txt = "")
    txt.gsub(/\*(.+)\*/){|m|"<i>#{$1}</i>"}
    .gsub(/\-(.+)\-/){|m|"<u>#{$1}</u>"}
    .gsub(/\[(.+)\]/){|m|"<a href='/publics/#{$1}'>#{$1}</a>"}
    .gsub(/\#(.+)\#/){|m|"<h2>#{$1}</h2>"}
  end

end
