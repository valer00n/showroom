module ApplicationHelper
  def invert_color(color)
    color.gsub!(/^#/, '')
    sprintf("%X", color.hex ^ 0xFFFFFF)
  end  
end
