# 7//13/16 7:33pm We've been using this the whole time(Rails used it automatically), but we're going to add more methods/add logic in here to help us with ruby code that we need. ("Business logic: move it out of your view and into your model.") Controller is kind of dumb in the sense that all it does is receive requests and send them around (like it's a switchboard.)
class Fruit < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  
  def description_list
    list = []
    descriptions.split(', ').each do |word|
      list << word.upcase
    end
    list
  end

  def sale_message
    if price.to_f < 4
      return "price per #{name}"
    elsif price.to_f >= 4
      return "price per pound"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price * 1.09
  end

  def price_class_name
    if sale_message == "price per pound"
      class_name = "pound"
    else
      class_name = ""
    end
  end

  def available_or_not
    if availability == true
      return "in stock"
    else
      return "out of stock"
    end
  end
end
