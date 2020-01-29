module ApplicationHelper
  def cp(path)
    "setting--current" if current_page?(path)
  end
end
