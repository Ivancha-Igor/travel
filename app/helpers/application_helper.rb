module ApplicationHelper
  def show_currency(number)
    number_to_currency(number, unit: 'UAH', format: '%n %u')
  end
end
