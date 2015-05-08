class BlogDecorator < ApplicationDecorator
 
  def og_description
    return object.og_description if object.og_description
    object.content ? strip_tags(object.content).html_safe : "Van Love"
  end

end