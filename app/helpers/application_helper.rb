module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Alice Sample App by Bárbara Ibáñez'
    page_title.empty? ? base_title : page_title + ' | ' + base_title
  end
end
