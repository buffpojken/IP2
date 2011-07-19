module ApplicationHelper

  def transform(txt = "")
    txt.gsub(/\*(.+)\*/){|m|"<i>#{$1}</i>"}.gsub(/\-(.+)\-/){|m|"<u>#{$1}</u>"}
  end

end
