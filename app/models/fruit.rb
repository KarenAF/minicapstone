# 7//13/16 7:33pm We've been using this the whole time, but we're going to add more methods/add logic in here to help us with ruby code that we need. ("Business logic: move it out of your view and into your model.") Controller is kind of dumb in the sense that all it does is receive requests and send them around (like it's a switchboard.)
class Fruit < ActiveRecord::Base
  def description_list
    list = []
    descriptions.split(', ').each do |word|
      list << word.upcase
    end
    list
  end
end
