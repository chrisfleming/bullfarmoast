module ApplicationHelper
  def display_miles(dist)
    "%0.1f miles" % (dist.to_f * 0.000621371192)  
    #dist.to_f * 0.621371192
    #dist
  end
  
end
