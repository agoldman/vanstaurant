class BlogDecorator < ApplicationDecorator
 
  def og_description
    return object.og_description if object.og_description
    object.content ? object.content : "Van Love"
  end

end