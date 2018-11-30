module GraphsHelper
  def graph_color_class(color)
    case color
    when 'shibafu'
      'success'
    when 'momiji'
      'danger'
    when 'sora'
      'primary'
    when 'ichou'
      'warning'
    when 'ajisai'
      'info'
    when 'kuro'
      'dark'
    else
      'light'
    end
  end
end
