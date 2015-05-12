module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Automatas"
    end
  end
end
