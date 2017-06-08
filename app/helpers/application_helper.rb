module ApplicationHelper
  def sortable(column, title=nil, search=nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction_sort = ((column == sort_column) && (sort_direction == "asc")) ? "desc" : "asc"
    link_to title, {column: column, direction: direction_sort, search: search}, {class: css_class}
  end
end
