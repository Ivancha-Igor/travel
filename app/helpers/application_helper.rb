module ApplicationHelper
  def show_currency(number)
    number_to_currency(number, unit: 'grn', format: '%n %u')
  end
end
